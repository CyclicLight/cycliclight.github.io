---
layout: default
title: Locations

---

## Major

<div class="EntryGrid">
    {% for location in site.data.locations %}
    {% if location.kind == "major" %}
    <details>
        <summary>
            <div class="title">
                <h2><a href="{{location.name | downcase | slugify}}">{{location.name}}</a></h2>
                <p>{{location.classification}}</p>
            </div>
            <i>{{location.short_desc}}</i>
        </summary>
        <p>{{location.long_desc}}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>
