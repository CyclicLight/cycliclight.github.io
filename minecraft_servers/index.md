---
title: Minecraft Servers
layout: wiki-page
---
{% for era in site.data.minecraft_servers.eras %}
<div class="serverEra" onclick="window.location.href='{{ era.id }}'">
    <h2>{{ era.era_name }} ({{era.start_date}} - {{era.end_date}})</h2>
    <p>{{ era.commentary }}</p>
</div>
{% endfor %}
