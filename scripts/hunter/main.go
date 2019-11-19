package main

import (
	"fmt"
	"os"
	"strconv"
	"strings"
	"text/template"

	"github.com/pkg/errors"

	//required for sqlx
	_ "github.com/go-sql-driver/mysql"
	"github.com/jmoiron/sqlx"
)

var expansions = []string{
	"EQ",
	"EQ",
	"RoK",
	"SoV",
	"SoL",
	"PoP",
	"LoY",
	"GoD",
	"OoW",
	"DoN",
	"DoDH",
	"TSS",
	"TBS",
	"SoF",
	"SoD",
	"UF",
	"HoT",
	"VoA",
	"RoF",
	"CoTF",
	"TDS",
	"EoK",
	"RoS",
	"TBL",
	"ToV",
}

func main() {
	err := run()
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}

func run() error {
	args := os.Args
	if len(args) < 2 {
		fmt.Println("syntax: hunter <expansion> <outpath>")
		fmt.Println("example: hunter 1 ../../content")
		os.Exit(1)
	}

	db, err := sqlx.Open("mysql", fmt.Sprintf("%s:%s@(%s)/%s", "root", "rootpass", "127.0.0.1", "eqemu"))
	if err != nil {
		return errors.Wrap(err, "mysql open")
	}
	defer db.Close()

	expansionID, err := strconv.ParseInt(args[1], 10, 64)
	if err != nil {
		return errors.Wrapf(err, "invalid expansionID argument: %s", args[1])
	}

	if int(expansionID) > len(expansions) {
		return fmt.Errorf("expansionID %d is beyond expansions slice", expansionID)
	}

	npcs := []NpcType{}
	var w *os.File

	query := fmt.Sprintf("SELECT zoneidnumber, long_name, short_name FROM zone WHERE min_expansion = %d", expansionID)
	zones, err := db.Queryx(query)
	for zones.Next() {
		zone := Zone{}
		err = zones.StructScan(&zone)
		if err != nil {
			return errors.Wrap(err, query)
		}

		query = fmt.Sprintf("SELECT name, level, hp, placeholder FROM npc_types WHERE id >= %d*1000 AND id < %d*1000+2000 AND rare_spawn = 1", zone.ID, zone.ID)
		rows, err := db.Queryx(query)
		if err != nil {
			return errors.Wrapf(err, "query %s", query)
		}
		npc := NpcType{}
		for rows.Next() {
			err = rows.StructScan(&npc)
			if err != nil {
				return errors.Wrap(err, query)
			}
			npc.ExpansionName = expansions[expansionID]
			npc.Zone = zone
			fmt.Println(fmt.Sprintf("%s/%s/hunter/%s.md", args[2], strings.ToLower(expansions[expansionID]), npc.StripName()), npc.CleanName())
			path := fmt.Sprintf("%s/%s/hunter/%s.md", args[2], strings.ToLower(expansions[expansionID]), strings.ToLower(npc.StripName()))
			w, err = os.Create(path)
			if err != nil {
				return err
			}

			var tmpl *template.Template
			tmpl, err = template.New("hunter").Funcs(template.FuncMap{
				"CleanName": npc.CleanName,
				"Date":      npc.Date,
				"StripName": npc.StripName,
				"ToLower":   strings.ToLower,
			}).Parse(hunterTemplate)
			if err != nil {
				return errors.Wrap(err, "hunterTemplate")
			}

			err = tmpl.Execute(w, &npc)
			if err != nil {
				return err
			}

			w.Close()

			npcs = append(npcs, npc)
		}
	}

	type Index struct {
		Npcs          []NpcType
		ExpansionName string
	}
	index := Index{
		Npcs:          npcs,
		ExpansionName: expansions[expansionID],
	}
	path := fmt.Sprintf("%s/%s/hunter/_index.en.md", args[2], strings.ToLower(expansions[expansionID]))
	w, err = os.Create(path)
	if err != nil {
		return err
	}

	var tmpl *template.Template
	tmpl, err = template.New("index").Funcs(template.FuncMap{
		"ToLower": strings.ToLower,
	}).Parse(indexTemplate)
	if err != nil {
		return errors.Wrap(err, "hunterTemplate")
	}

	err = tmpl.Execute(w, &index)
	if err != nil {
		return err
	}

	w.Close()

	return nil
}
