---
title: "Posts by Year"
permalink: /year-archive/
layout: home
author_profile: true
---

{% for post in site.posts %}
    {% include archive-single.html %}
{% endfor %}
