---
layout: default
title: Locations

---

## Major

<div class="EntryGrid">
    {% for location in site.data.locations %}
    {% if location.kind == "major" %}
    <details id="{{location.name|slugify}}">
        <summary>
            <div class="title">
                <h2><a href="{{location.name | downcase | slugify}}">{{location.name}}</a></h2>
                <p>{{location.classification}}</p>
            </div>
            <i>{{location.short_desc}}</i>
        </summary>
        <div style="display: flex; flex-direction: row; justify-content: space-between; width: 100%; padding: 8px; box-sizing: border-box;">
            {% if location.vibe %}
                <i class="tooltip">✨ {{location.vibe}}<span class="tooltiptext">Vibe</span></i>
            {% else %}
                <span></span>
            {% endif %}
            <i class="tooltip">🧭 {{location.position}}<span class="tooltiptext">Location</span></i>
        </div>
        <p>{{location.long_desc}}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>

## Minor

<div class="EntryGrid">
    {% for location in site.data.locations %}
    {% if location.kind == "minor" %}
    <details id="{{location.name|slugify}}">
        <summary>
            <div class="title">
                <h2><a href="{{location.name | downcase | slugify}}">{{location.name}}</a></h2>
                <p>{{location.classification}}</p>
            </div>
            <i>{{location.short_desc}}</i>
        </summary>
        <div style="display: flex; flex-direction: row; justify-content: space-between; width: 100%; padding: 8px; box-sizing: border-box;">
            {% if location.vibe %}
                <i class="tooltip">✨ {{location.vibe}}<span class="tooltiptext">Vibe</span></i>
            {% else %}
                <span></span>
            {% endif %}
            <i class="tooltip">🧭 {{location.position}}<span class="tooltiptext">Location</span></i>
        </div>
        <p>{{location.long_desc}}</p>
    </details>
    {% endif %}
    {% endfor %}
</div>
