---
#title: "Splash Page"
layout: splash
feature_row:
  - image_path: assets/images/Main_Diagram.png
    alt: "Baboyan Connectomics"
    image_caption: <center> "The Structural Connectome of the Human Frontal Lobe." </center>
    #title: "Connectomics"
    #excerpt: "Welcome To My Personal Webpage!"
---
<br>
<br>
{% include feature_row id="feature_row" type="center" %}

<style> .indented { padding-left: 35pt; padding-right: 35pt; } </style>
<div style="text-align:center">
<div class="indented">
<p>
I'm a doctoral candidate at UC Irvine where i've been studying the neurobiology of human language using Diffusion Magnetic Resonance Imaging. As of December 2019, I will be working for <a href="https://www.synaptivemedical.com/" target="_blank"> Synaptive Medical </a> as a Clinical Applications Specialist. Synaptive is a bio-tech startup based out of Toronto whose principal aim is to improve neurosurgical patient outcomes using cutting-edge imaging, navigation, and robotics platforms in the operating room.
</p>
</div>

<br>
<br>
<br>
<br>

<div style="text-align:left">
<H1> Recent Blog Posts </H1>

<!-- {% include feature_row id="Blog_intro" type="center" %} -->

{% for post in site.posts %}
    {% include archive-single.html %}
{% endfor %}

</div>
