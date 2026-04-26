---
layout: default
title: Creatures

---

## The Regular Folk

<div class="EntryGrid">
    {% for creature in site.data.creatures %}
    {% if creature.kind == "regular" %}
    <details>
        <summary>
            <div class="title">
                <h2><a href="{{creature.name | downcase | slugify}}">{{creature.name}}</a></h2>
                <p>{{creature.classification}}</p>
            </div>
            <i>{{creature.short_desc}}</i>
        </summary>
        <p>{{creature.long_desc}}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>

## Mutations

Creatures which aren't a distinct lineage themselves but mutations applicable to a multitude of creatures.


<div class="EntryGrid">
    {% for creature in site.data.creatures %}
    {% if creature.kind == "mutation" %}
    <details>
        <summary>
            <div class="title">
                <h2><a href="{{creature.name | downcase | slugify}}">{{creature.name}}</a></h2>
                <p>{{creature.classification}}</p>
            </div>
            <i>{{creature.short_desc}}</i>
        </summary>
        <p>{{creature.long_desc}}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>


## Other
