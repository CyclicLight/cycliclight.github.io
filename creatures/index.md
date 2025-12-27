---
layout: default
title: Creatures

---

## Sentient

<table>
    <th>
        Name
    </th>
    <th>
        Description
    </th>
    <th>
        Sub-Lineages
    </th>
    <th>
        Classification
    </th>
    <th>
        Origin
    </th>

    {% for creature in site.data.creatures %}
    {% if creature.kind == "sentient" %}
    <tr>
      <td><a href="{{creature.name | downcase | slugify}}">{{creature.name}}</a></td>
      <td>{{creature.short_desc}}</td>
      <td>{% for lineage in creature.lineages %}
        {{lineage.name}}{% unless forloop.last %}, {% endunless %}
      {% endfor %}</td>
      <td>{{creature.classification}}</td>
      <td>{{creature.origin}}</td>
    </tr>
    {% endif %}
    {% endfor %}
</table>

## Mutations

Creatures which aren't a unique species themselves but mutations applicable to a multitude of sentient creatures.

<table>
    <th>
        Name
    </th>
    <th>
        Description
    </th>
    <th>
        Classification
    </th>
    <th>
        Origin
    </th>

    {% for creature in site.data.creatures %}
    {% if creature.kind == "mutation" %}
    <tr>
      <td><a href="{{creature.name | downcase | slugify}}">{{creature.name}}</a></td>
      <td>{{creature.short_desc}}</td>
      <td>{{creature.classification}}</td>
      <td>{{creature.origin}}</td>
    </tr>
    {% endif %}
    {% endfor %}
</table>
