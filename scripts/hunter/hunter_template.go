package main

var hunterTemplate = `---
date: {{.Date}}
title: ({{.ExpansionName}}) {{.CleanName}}
weight: 1
hidden: true
menuTitle: {{.CleanName}}
---

Name: {{.CleanName}}
{{if .Placeholder}}
Placeholder: {{.Placeholder}}{{end}}

Zone: [{{.Zone.LongName}}](/en/{{.ExpansionName | ToLower}}/{{.Zone.StripName | ToLower}})

Level: {{.Level}}

Hitpoints: {{.HP}}`
