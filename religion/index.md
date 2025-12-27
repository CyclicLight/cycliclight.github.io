---
layout: default
title: Religion in the Cyclical Realms
---

# Pantheon of Major Deities

Divided along the line of Ordered & Chaotic, the Major deities are made up of the Maker, the World-Eater, & the Maker's creations called "**the Shards**".

When drawing the line between these, it can often be seen as a division between **Theoretical** & **Practical**, a student of *Aranou* will spend time studying the Arcane while a follower of *Alai* will be practicing it. Alternatively, it can be seen as **Lawful** & **Chaotic**.

As is with all life, people are multifaceted, there is no expectation of following a singular deity as they could not cover all one is or needs to be.

{% include pantheon.html %}

## Pantheon of Minor Deities

Sometimes referred to as **Null Gods**, the minor deities are not creations of the Maker, though like the Major Deities they draw power from faith.

<table>
    <th>
        Name
    </th>
    <th>
        Domain
    </th>
{% for deity in site.data.pantheon %} {% unless deity.table_class %}
  <tr>
    <td>
        <a href="{{deity.name | downcase | slugify}}"
            >{{deity.name}}{% if deity.subname %}, {{deity.subname}}{% endif %}</a
        >
    </td>
        <td>{{deity.domains}}</td>
  </tr>
{% endunless %} {% endfor %}
</table>
