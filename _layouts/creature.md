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
    
        {{page.long_desc}}
      
        <h2> Lineages </h2>
        {% for lineage in page.lineages %}
          <h3>{{lineage.name}}</h3>
        
          {{lineage.long_desc}}
        {% endfor %}
    </div>
    <div style="display: flex; justify-content: flex-end">
        <div style="display: flex; flex-direction: column">
            <!--Info Box -->
            <div>
                <h3 style="text-align: center; margin-bottom: 4px">Info</h3>
                <table style="width: 100%">
                    <tr>
                        <td><b>Classification</b></td>
                        <td>{{page.classification}}</td>
                    </tr>
                    <tr>
                        <td><b>Lifespan</b></td>
                        <td>{{page.lifespan}}</td>
                    </tr>
                    <tr>
                        <td><b>Origin</b></td>
                        <td>{{page.origin}}</td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</div>
