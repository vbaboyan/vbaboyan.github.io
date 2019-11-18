---
layout: archive
permalink: /blog/
title: "Blog Posts by Tags"
---
{% for post in site.posts%}
   <h2>{{ post.name }}</h2>
   <ul>
   {% for page in post.items %}
      <li>{{ page.title }}</li>
    {% endfor %}
  </ul>
{% endfor %}
