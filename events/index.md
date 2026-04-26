---
layout: default
title: Historical Events

---

<div class="EntryGrid">
    {% for event in site.data.events %}
    <details>
        <summary>
            <div class="title">
                {% if event.kind == "major" %}
                    <h2><a href="{{event.name | downcase | slugify}}">{{event.name}}</a></h2>
                {% else %}
                    <h3><a href="{{event.name | downcase | slugify}}">{{event.name}}</a></h3>
                {% endif %}
                <p>{{event.time}}</p>
            </div>
            <i>{{event.short_desc}}</i>
        </summary>
        <div style="display: flex; flex-direction: row; justify-content: space-between; width: 100%; padding: 8px; box-sizing: border-box;">
            {% if event.vibe %}
                <i class="tooltip">✨ {{event.vibe}}<span class="tooltiptext">Vibe</span></i>
            {% else %}
                <span></span>
            {% endif %}
            <i class="tooltip">🧭 {{event.position}}<span class="tooltiptext">Location</span></i>
        </div>
        <p>{{event.long_desc}}</p>
    </details>
    {% endfor %}
</div>
