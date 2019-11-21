package main

var hunterTemplate = `---
title: ({{.ExpansionName}}) {{.CleanName}}
weight: 1
hidden: true
menuTitle: {{.CleanName}}
---

Name: {{.CleanName}}
{{if .Placeholder}}
Placeholder: {{.Placeholder}}{{end}}

Zone: [{{.Zone.LongName}}](/en/{{.ExpansionName | ToLower}}/exploration/{{.Zone.StripName | ToLower}})

Level: {{.Level}}

Hitpoints: {{.HP}}`
