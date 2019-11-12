---
layout: archive
permalink: /blog/
title: "Blog Posts by Tags"
---
{% for group in site.pages | group_by: "category" | sort_by: "name" %}
   <h2>{{ group.name }}</h2>
   <ul>
   {% for page in group.items %}
      <li>{{ page.title }}</li>
    {% endfor %}
  </ul>
{% endfor %}
