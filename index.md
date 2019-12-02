---
#title: "Splash Page"
layout: splash
feature_row:
  - image_path: assets/images/Main_Diagram.png
    alt: "Baboyan Connectomics"
    image_caption: "The Structural Connectome of the Human Frontal Lobe. <br> (Data Courtesy of the [Aphasia Lab, @ The University of South Carolina](https://web.asph.sc.edu/aphasia/))"
    title: "Welcome • Բարի Գալուստ • أهلا وسهلا"
    #excerpt: "Welcome To My Personal Webpage!"
---
{% include feature_row id="feature_row" type="center" %}

<!-- <style> .indented { padding-left: 35pt; padding-right: 35pt; } </style> -->
<div style="text-align:justify">
<!-- <div class="indented"> -->
<p>
Thanks for visiting my webpage! I'm currently a doctoral candidate in the Auditory & Language Neuroscience Lab at UC Irvine. My research interests are in studying the neurobiology of language using modern brain imaging tools. I've always had a passion for learning languages and for learning about languages through my life-experiences traveling and living overseas. I'm grateful to be working on a thesis related to this passion. Professionally, I've just recently accepted an offer to work for a fantastic med-tech startup based out of Toronto, called <a href="https://www.synaptivemedical.com/" target="_blank"> Synaptive Medical</a>, dedicated to using state-of-the-art imaging and robotics technologies to help improve patient outcomes by streamlining the neurosurgical workflow. For more information about me, you can visit my bio or even take a look at my CV. I've otherwise dedicated this page to sharing ideas about life through the blog page. Thanks for stopping by and feel free to get in contact with me through any of the links provided.
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
