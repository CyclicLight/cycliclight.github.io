---
layout: default
title: Factions
---

<div class="EntryGrid">
    {% assign factions_by_kind = site.data.factions | sort: "kind" %}
    {% for faction in factions_by_kind %}
    <details>
        <summary>
            <div class="title">
                <h2><a href="{{faction.name | downcase | slugify}}">{{faction.name}}</a></h2>
                <p>{{faction.kind}}</p>
            </div>
            <i>{{ faction.quote }}</i>
        </summary>
    </details>
    {% endfor %}
</div>
