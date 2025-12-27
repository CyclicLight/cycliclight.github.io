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
        <i>"{{page.quote}}"
        {% if page.quote_speaker %} - {{page.quote_speaker}}{% endif %}</i>
        {% endif %}
    
        {{page.long_desc}}
    </div>
    <div style="display: flex; justify-content: flex-end">
        <div style="display: flex; flex-direction: column">
            <!--Info Box -->
            <div>
                <h3 style="text-align: center; margin-bottom: 4px">Info</h3>
                <table style="width: 100%">
                    <tr>
                        <td><b>Kind</b></td>
                        <td>{{page.kind}}</td>
                    </tr>
                    <tr>
                        <td><b>Status</b></td>
                        <td>{{page.status}}</td>
                    </tr>
                    <tr>
                        <td><b>Leader(s)</b></td>
                        <td>{{page.leaders}}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
