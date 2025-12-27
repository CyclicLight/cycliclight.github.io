---
layout: default
---

<div
    style="
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
    "
>
    <div>
        {% if page.quote %}
        <i>"{{page.quote}}"</i>
        {% endif %}
    </div>
    <div style="display: flex; justify-content: flex-end">
        <div style="display: flex; flex-direction: column">
            <!--Info Box -->
            <div>
                <h3 style="text-align: center; margin-bottom: 4px">Info</h3>
                <table style="width: 100%">
                    {% if page.subname %}
                    <tr>
                        <td><b>Title</b></td>
                        <td>{{page.subname}}</td>
                    </tr>
                    {% endif %}
                    <tr>
                        <td><b>Domains</b></td>
                        <td>{{page.domains}}</td>
                    </tr>
                    <tr>
                        <td><b>Alignment</b></td>
                        <td>{{page.alignment}}</td>
                    </tr>
                    {% if page.affiliation %}
                    <tr>
                        <td><b>Affiliation</b></td>
                        <td>{{page.affiliation}}</td>
                    </tr>
                    {% endif %}

                    {% if page.followers %}
                    <tr>
                        <td><b>Followers</b></td>
                        <td>
                            {% for follower in page.followers %} {% if
                            follower.link %}
                            <a href="{{follower.link | slugify}}">
                                <i>{{follower.name}}</i></a
                            >
                            {% else %} <i>{{follower.name}}</i> {% endif %}{%
                            unless forloop.last %}, {% endunless %} {% endfor %}
                        </td>
                    </tr>
                    {% endif %}
                </table>
            </div>

            {% if page.relations %}
            <div>
                <h3 style="text-align: center; margin-bottom: 4px">
                    Relations
                </h3>
                <table style="width: 100%">
                    <tr>
                        <th>Name</th>
                        <th>Relation</th>
                    </tr>

                    {% for entry in page.relations %}
                    <tr>
                        <td>
                            <a href="{{entry.deity | downcase}}"
                                >{{entry.deity}}</a
                            >
                        </td>
                        <td>{{entry.relation}}</td>
                    </tr>
                    {% endfor %}
                </table>
            </div>
            {% endif %}
        </div>
    </div>
</div>
