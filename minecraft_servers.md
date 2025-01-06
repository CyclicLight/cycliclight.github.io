---
title: Minecraft Servers
layout: wiki-page
---

A list of servers.

{% for era in site.data.minecraft_servers.eras %}
<details>
    <summary><b>{{ era.era_name }} ({{era.start_date}} - {{era.end_date}})</b></summary>

{{ era.commentary }}

{% for server in era.servers %}
<h3>{{ server.title }}</h3>
<p> {{ server.comment }} </p>
<table>
    <tr>
        <th>Minecraft Version</th>
        <td>{{ server.minecraft_version }}</td>
    </tr>
    <tr>
        <th>Modpack Name</th>
        <td>{{ server.modpack_name }}</td>
    </tr>
    <tr>
        <th>Start Date</th>
        <td>{{ server.start_date }}</td>
    </tr>
    <tr>
        <th>End Date</th>
        <td>{{ server.end_date }}</td>
    </tr>
    <tr>
        <th>Canonized Location</th>
        <td>{{ server.canonized_location }}</td>
    </tr>
    <tr>
        <th>Canon Date</th>
        <td>{{ server.canon_date }}</td>
    </tr>
</table>
Screenshots
{% for screenshot_group in server.screenshots %}
<details>
    <summary><b>{{ screenshot_group.group_name }}</b></summary>
    {{screenshot_group.group_description}}

    {% for entry in screenshot_group.images %}
        <img src="/assets/images/minecraft_servers/{{ entry.image }}" alt="{{ entry.description }}" >
        <p style="text-align: center;"><i>{{ entry.description }}</i></p>
    {% endfor %}
</details>
{% endfor %}
{% endfor %}
</details>
---
{% endfor %}
