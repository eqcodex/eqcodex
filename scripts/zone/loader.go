package main

import (
	"encoding/csv"
	"fmt"
	"log"
	"os"
)

func main() {
	f, err := os.Open("zones.csv")
	if err != nil {
		fmt.Println(err)
		return
	}
	defer f.Close()

	r := csv.NewReader(f)

	r.Comma = '|'
	records, err := r.ReadAll()
	if err != nil {
		log.Fatal(err)
	}

	fmt.Print(records)
	for _, record := range records {
		w, err := os.Create(fmt.Sprintf("../../data/zone/%s.yaml", record[1]))
		if err != nil {
			fmt.Println("failed to make", record[1], err)
			os.Exit(1)
		}
		_, err = w.Write([]byte(fmt.Sprintf("id: %s\nshort: %s\nlong: \"%s\"\nexpansion:", record[0], record[1], record[2])))
		if err != nil {
			fmt.Println("failed to write", err)
			os.Exit(1)
		}
		w.Close()
	}

}
