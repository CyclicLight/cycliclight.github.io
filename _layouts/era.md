---
layout: wiki-page
---

<div class="serverEra" onclick="window.location.href='/minecraft_servers'">
    <h3> Back </h3>
</div>

{{ page.commentary }}

{% for server in page.servers %}
<h2>{{ server.title }}</h2>
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
        <th>Runtime</th>
        <td>{{ server.start_date }} - {{ server.end_date }}</td>
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
{% for screenshot_group in server.screenshots %}
<details>
    <summary><b>{{ screenshot_group.group_name }}</b></summary>
    {{screenshot_group.group_description}}

    {% for entry in screenshot_group.images %}
        {% if entry.image %}
        <img src="/assets/images/minecraft_servers/{{ entry.image }}" alt="{{ entry.description }}" >
        {% endif %}
        {% if entry.video %}
        <div style="display: flex; justify-content: center;">
            <iframe style="width:80%; aspect-ratio:16/9;" src="https://www.youtube.com/embed/{{entry.video}}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
        </div>
        {% endif %}
        <p style="text-align: center;"><i>{{ entry.description }}</i></p>
    {% endfor %}
</details>
{% endfor %}
{% endfor %}