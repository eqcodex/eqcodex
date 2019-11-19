package main

var indexTemplate = `---
title: ({{.ExpansionName}}) Hunter
menuTitle: Hunter
description: {{.ExpansionName}} Hunter Cheat Sheet
weight: 1
---

Drops|Name|Placeholder|Zone
---:|---|---|--- 
{{range .Npcs}}||[{{.CleanName}}]({{.StripName | ToLower}})|{{.Placeholder}}|[{{.Zone.LongName}}](/en/{{.ExpansionName | ToLower}}/exploration/{{.Zone.StripName | ToLower}})
{{end}}`
