---
#title: "Splash Page"
layout: splash
feature_row:
  - image_path: assets/images/Main_Diagram.png
    alt: "Baboyan Connectomics"
    image_caption: "The Structural Connectome of the Human Frontal Lobe. <br> (Data Courtesy of the [Aphasia Lab](https://web.asph.sc.edu/aphasia/))"
    #title: "Connectomics"
    #excerpt: "Welcome To My Personal Webpage!"
---
<br>
<br>
{% include feature_row id="feature_row" type="center" %}

<!-- <style> .indented { padding-left: 35pt; padding-right: 35pt; } </style> -->
<div style="text-align:justify">
<!-- <div class="indented"> -->
<p>
Thanks for visiting my webpage! I'm currently a doctoral candidate in the Auditory & Language Neuroscience Lab at UC Irvine. My research interests are in studying the neurobiology of language using modern brain imaging tools. I've just recently accepted an offer to work for a fantastic med-tech startup based out of Toronto, <a href="https://www.synaptivemedical.com/" target="_blank"> Synaptive Medical </a>, that is dedicated to using data and robotics to help improve patient outcomes by streamlining the neurosurgical workflow. For more information about me, you can visit my bio or even take a look at my CV. Otherwise, i've dedicated this page to sharing ideas about life through the dedicated blog page. Thanks for stopping by and feel free to get in contact with me through any of the links provided.
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
