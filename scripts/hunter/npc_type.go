package main

import (
	"regexp"
	"strings"
	"time"
)

// NpcType represents an npc
type NpcType struct {
	Name          string
	Level         int64
	HP            string
	ExpansionName string
	Zone          Zone
	Placeholder   string
}

// Date returns current date
func (n *NpcType) Date() string {
	return time.Now().Format(time.RFC3339)
}

// CleanName returns a displayed NPC name
func (n *NpcType) CleanName() string {
	var re = regexp.MustCompile(`[^0-9A-Za-z_]+`)
	cleanName := strings.Replace(n.Name, " ", "_", -1)
	cleanName = strings.Replace(cleanName, "#", "", -1)
	cleanName = strings.TrimSpace(re.ReplaceAllString(cleanName, ""))
	cleanName = strings.Replace(cleanName, "_", " ", -1)
	return cleanName
}

// StripName returns the name if all odd characters are stripped
func (n *NpcType) StripName() string {
	var re = regexp.MustCompile(`[^0-9A-Za-z_]+`)
	stripName := strings.Replace(n.Name, "#", "", -1)
	stripName = strings.TrimSpace(re.ReplaceAllString(stripName, ""))
	return stripName
}
