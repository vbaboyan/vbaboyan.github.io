---
#title: "Splash Page"
layout: home
author_profile: false
---

<style> .indented { padding-left: 10pt; padding-right: 10pt; } </style>
<div style="text-align:center">
<img src="{{ site.url }}{{site.baseurl }}assets/images/splash/Connectomics.png" alt="Connectomics">
<div class="indented">
<p>
Welcome to my personal webpage! <br> I'm a doctoral candidate at UC Irvine where i've been studying the neurobiology of human language using Magnetic Resonance Imaging.In addition, as of December 2019, I will be working full-time for a bio-tech/med-tech startup, <a href="https://www.synaptivemedical.com/" target="_blank"> Synaptive Medical </a>, whose principal aim is to improve neurosurgical patient outcomes using cutting-edge imaging, navigation, and robotics platforms in the operating room.
</p>
</div>

<div style="text-align:left">
<H1> Recent Blog Posts </H1>

<!-- {% include feature_row id="Blog_intro" type="center" %} -->

{% for post in site.posts %}
    {% include archive-single.html %}
{% endfor %}

</div>
