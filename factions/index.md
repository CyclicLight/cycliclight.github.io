---
layout: default
title: Factions
---

An account of the major factions affecting the state of the realms. If they are not here, they are simply not important, as decreed by the *Royal Historic Society of the Staglands*.

<h2>
    Active
</h2>
<p>
    Currently active organisations.
</p>

<div class="EntryGrid">
    {% assign factions_by_kind = site.data.factions | sort: "kind" %}
    {% for faction in factions_by_kind %}
    {% if faction.era == "Current" %}
    <details id="{{faction.name|slugify}}">
        <summary>
            <div class="title">
                <h2><a href="{{faction.name | downcase | slugify}}">{{faction.name}}</a></h2>
                <p>{{faction.kind}}</p>
            </div>
            <i>"{{ faction.quote }}"{% if faction.quote_speaker %} - {{ faction.quote_speaker }}{% endif %}</i>
        </summary>
        
        <p>{{ faction.long_desc }}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>

<h2>
    Recent
</h2>
<p>
    Organisations which recently disbanded.
</p>

<div class="EntryGrid">
    {% assign factions_by_kind = site.data.factions | sort: "kind" %}
    {% for faction in factions_by_kind %}
    {% if faction.era == "Recent" %}
    <details id="{{faction.name|slugify}}">
        <summary>
            <div class="title">
                <h2><a href="{{faction.name | downcase | slugify}}">{{faction.name}}</a></h2>
                <p>{{faction.kind}}</p>
            </div>
            <i>"{{ faction.quote }}"{% if faction.quote_speaker %} - {{ faction.quote_speaker }}{% endif %}</i>
        </summary>
        
        <p>{{ faction.long_desc }}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>

<h2>
    Ancient
</h2>
<p>
    Organisations long since dismantled.
</p>

<div class="EntryGrid">
    {% assign factions_by_kind = site.data.factions | sort: "kind" %}
    {% for faction in factions_by_kind %}
    {% if faction.era == "Ancient" %}
    <details id="{{faction.name|slugify}}">
        <summary>
            <div class="title">
                <h2><a href="{{faction.name | downcase | slugify}}">{{faction.name}}</a></h2>
                <p>{{faction.kind}}</p>
            </div>
            <i>"{{ faction.quote }}"{% if faction.quote_speaker %} - {{ faction.quote_speaker }}{% endif %}</i>
        </summary>
        
        <p>{{ faction.long_desc }}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>
