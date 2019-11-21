package main

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/pkg/errors"
)

// Parser parses spell data
type Parser struct {
	Spells []Spell
}

// New creates a new parser
func New() (*Parser, error) {
	return &Parser{}, nil
}

// Spell represents a spell entry
type Spell struct {
	ID       int64
	Name     string
	ActorTag string
	Extra    string

	Range int64

	Levels []int64

	EnduranceCost int64
	TimerID       int64
	IsCombatSkill bool
}

// Parse parses a provided line
func (p *Parser) Parse(line string) error {
	var err error

	fields := strings.Split(line, "^")
	if len(fields) != 168 {
		return fmt.Errorf("parser only works with 168 field spell files")
	}
	s := Spell{}

	s.ID, err = strconv.ParseInt(fields[0], 10, 64)
	if err != nil {
		return errors.Wrap(err, "invalid id")
	}
	s.Name = fields[1]
	s.ActorTag = fields[2]
	s.Extra = fields[3]

	s.Range, err = strconv.ParseInt(fields[4], 10, 64)
	if err != nil {
		return errors.Wrap(err, "invalid range")
	}

	var level int64
	for i := 0; i < 16; i++ {
		level, err = strconv.ParseInt(fields[38+i], 10, 64)
		if err != nil {
			return errors.Wrapf(err, "parsing level field %d", 38+i)
		}
		s.Levels = append(s.Levels, level)
	}

	s.EnduranceCost, err = strconv.ParseInt(fields[99], 10, 64)
	if err != nil {
		return errors.Wrap(err, "invalid timerID")
	}

	s.TimerID, err = strconv.ParseInt(fields[100], 10, 64)
	if err != nil {
		return errors.Wrap(err, "invalid timerID")
	}

	if fields[101] == "1" {
		s.IsCombatSkill = true
	}

	if s.Levels[0] < 255 {
		fmt.Println(s, s.TimerID)
	}

	p.Spells = append(p.Spells, s)
	return nil
}
