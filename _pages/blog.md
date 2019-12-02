---
layout: archive
permalink: /blog/
title: "Recent Posts"
author_profile: true
header:
  image: #"/assets/images/splash/Connectomics.png"
---

{% for post in site.posts %}
    {% include archive-single.html %}
{% endfor %}
