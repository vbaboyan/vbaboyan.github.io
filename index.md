---
#title: "Splash Page"
layout: splash
#permalink: /splash-page/
#date: 2016-03-23T11:48:41-04:00
author_profile: true
header:
  image: "/assets/images/splash/Connectomics.png"
intro:
  - excerpt: 'Welcome to my Personal Webpage.'
Blog_intro:
  - excerpt: 'Recent Blog Posts'
feature_row:
  - image_path: assets/images/splash/unsplash1.jpg
    excerpt: "An informal introduction."
    url: /about/
    btn_label: "About"
    btn_class: "btn--primary"
  - image_path: assets/images/splash/unsplash2.jpg
    excerpt: "Recent blog posts."
    url: /blog/
    btn_label: "Read More"
    btn_class: "btn--primary"
  - image_path: assets/images/splash/unsplash3.jpg
    excerpt: "A formal introduction."
    url: /CV/
    btn_label: "CV"
    btn_class: "btn--primary"
---

{% include feature_row id="intro" type="center" %}

{% include feature_row %}

{% include feature_row id="Blog_intro" type="left" %}

{% for post in site.posts %}
    {% include archive-single.html %}
{% endfor %}

<!-- {% include feature_row id="feature_row" type="left" %}
{% include feature_row id="feature_row2" type="right" %}
{% include feature_row id="feature_row3" type="left" %} -->

<!-- 'I'm a doctoral candidate at UC Irvine where i've been studying the neurobiology of human language using Magnetic Resonance Imaging. In addition, as of December 2019, I will be working full-time for a fantastic medical technology startup, Synaptive Medical, whose principal aim is to improve neurosurgical patient outcomes using cutting edge imaging and robotics platforms in the operating room.' -->
