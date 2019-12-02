---
#title: "Splash Page"
layout: home
author_profile: true
header:
  image: "/assets/images/splash/Connectomics.png"
intro:
---

<!-- {% include feature_row id="intro" type="center" %} -->
<!-- <div style="text-align: justify"> -->
<style> .indented { padding-left: 50pt; padding-right: 50pt; } </style>

<div style="text-align:center">
<div class="indented">
<p>
Welcome to my personal webpage. I'm a doctoral candidate at UC Irvine where i've been studying the neurobiology of human language using Magnetic Resonance Imaging.In addition, as of December 2019, I will be working full-time for a bio-tech/med-tech startup, <a href="https://www.synaptivemedical.com/" target="_blank"> Synaptive Medical </a>, whose principal aim is to improve neurosurgical patient outcomes using cutting-edge imaging, navigation, and robotics platforms in the operating room.
</p>
</div>

<div style="text-align:left">
<H1> Recent Blog Posts </H1>

<!-- {% include feature_row id="Blog_intro" type="center" %} -->

{% for post in site.posts %}
    {% include archive-single.html %}
{% endfor %}

</div>

<!-- {% include feature_row id="feature_row" type="left" %}
{% include feature_row id="feature_row2" type="right" %}
{% include feature_row id="feature_row3" type="left" %} -->
