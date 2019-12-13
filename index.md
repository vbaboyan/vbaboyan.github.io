---
#title: "Splash Page"
layout: splash
feature_row:
  - image_path: assets/images/Main_Diagram.png
    alt: "Baboyan Connectomics"
    image_caption: "The Structural Connectome of the Human Frontal Lobe. <br> (Data Courtesy of the [Aphasia Lab, @ USC](https://web.asph.sc.edu/aphasia/))"
    title: "Welcome • Բարի Գալուստ • أهلا وسهلا"
    #excerpt: "Welcome To My Personal Webpage!"
---
{% include feature_row id="feature_row" type="center" %}

<!-- <style> .indented { padding-left: 35pt; padding-right: 35pt; } </style> -->
<div style="text-align:justify">
<!-- <div class="indented"> -->
<p>
Thanks for visiting my webpage! I'm currently a doctoral candidate in the Auditory & Language Neuroscience Lab at UC Irvine, and my research is focused on studying the neurobiology of language and its related disorders using modern brain imaging tools. My interest in language and anatomy has primarily been motivated by my life-experiences traveling and living overseas in the middle east, where language barriers were a part of my everyday experience. Seeing how this fundamentally human ability could break down when in foreign environments or through unfortunate neurological insults (e.g., cerebral infarctions) fascinates the heck out of me. As of December (2019), I will be working for a Med-Tech startup based out of Toronto - <a href="https://www.synaptivemedical.com/" target="_blank"> Synaptive Medical</a> - committed to streamlining the neurosurgical workflow using state-of-the-art imaging, navigation, and robotics technologies with the ultimate goal of improving patient outcomes through neurological preservation. For more information about me, you can visit my bio or even take a look at my CV, but I've otherwise dedicated this page to sharing ideas about life through my blog section. Thanks for stopping by and feel free to get in contact with me through any of the links provided.
</p>
</div>
{% include author-profile.html %}

<br>

<div style="text-align:left">
<H1> Recent Blog Posts </H1>

<!-- {% include feature_row id="Blog_intro" type="center" %} -->

{% for post in site.posts %}
    {% include archive-single.html %}
{% endfor %}

</div>
