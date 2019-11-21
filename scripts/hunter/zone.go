package main

import (
	"regexp"
	"strings"
)

// Zone holds zone data
type Zone struct {
	ID          int64  `db:"zoneidnumber"`
	LongName    string `db:"long_name"`
	ShortName   string `db:"short_name"`
	Placeholder string `db:"placeholder"`
}

// StripName returns the name if all odd characters are stripped
func (z *Zone) StripName() string {
	var re = regexp.MustCompile(`[^0-9A-Za-z_]+`)
	stripName := strings.Replace(z.LongName, " ", "_", -1)
	stripName = strings.TrimSpace(re.ReplaceAllString(stripName, ""))
	return stripName
}
