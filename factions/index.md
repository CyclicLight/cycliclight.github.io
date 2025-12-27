---
layout: default
title: Factions
---

<table>
    <th>
        Name
    </th>
    <th>
        Status
    </th>

    {% assign header = "NOHEADER" %}
    {% assign factions_by_kind = site.data.factions | sort: "kind" %}

    {% for faction in factions_by_kind %}
    {% if faction.kind != header %}
      <tr style="text-align: center;">
        <th colspan="2" class="deityThinRow" style="padding: 5px;">{{ faction.kind }}</th>
      </tr>
  
      {% assign header = faction.kind %}
    {% endif %}
    <tr>
      <td><a href="{{faction.name | downcase | slugify}}">{{faction.name}}</a></td>
      <td>{{faction.status}}</td>
    </tr>
    {% endfor %}
</table>
