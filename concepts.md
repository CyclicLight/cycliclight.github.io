---
layout: default
title: Concepts
---

<div class="EntryGrid">
    {% assign concepts_by_kind = site.data.concepts | sort: "kind" %}
    {% for concept in concepts_by_kind %}
    <details id="{{concept.name|slugify}}">
        <summary>
            <div class="title">
                <h2>{{concept.name}}</h2>
                <p>{{concept.kind}}</p>
            </div>
            <i>{{ concept.short_desc }}</i>
        </summary>
        <p>{{ concept.long_desc }}</p>
        
        <i>"{{ concept.quote }}"</i>
    </details>
    {% endfor %}
</div>
