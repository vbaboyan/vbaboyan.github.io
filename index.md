---
#title: "Splash Page"
layout: splash
feature_row:
  - image_path: assets/images/Main_Diagram2.png
    alt: "Baboyan Connectomics"
    image_caption: "Structural Connectomics of the Human Brain. <br> (Data Courtesy of the [Aphasia Lab, @ USC](https://web.asph.sc.edu/aphasia/))"
    title: "Welcome • Բարի Գալուստ • أهلا وسهلا"
    #excerpt: "Welcome To My Personal Webpage!"
---
{% include feature_row id="feature_row" type="center" %}

<!-- <style> .indented { padding-left: 35pt; padding-right: 35pt; } </style> -->
<div style="text-align:justify">
<!-- <div class="indented"> -->
<p>
Thanks for visiting my webpage! I'm very pleased to share that as of March (2020), I've successfully defended my dissertation and have been awarded my research doctorate from UC Irvine's Auditory & Language Neuroscience Lab. My research program was focused on studying the neurobiology of language and its related disorders using modern brain imaging and predictive analytics tools. My interest in language and anatomy has primarily been motivated by my life-experiences traveling and living overseas in the middle east, where language barriers were a part of my everyday experience. Seeing how this fundamentally human ability could break down when in foreign environments or through unfortunate neurological injury fascinates the heck out of me. As of December (2019), I'll be working for a fantastic Toronto-based Med-Tech startup - <a href="https://www.synaptivemedical.com/" target="_blank"> Synaptive Medical</a> -  providing clinical support for healthcare facilities leveraging Synaptive's portfolio of technologies designed to facilitate neurosurgical decision-making with intraoperative image-guided navigation and robotically-assisted 3D visualization in order to aide with executing safe interventions. For more information about me, you can visit my bio or even take a look at my CV, but I've otherwise dedicated this space to sharing ideas about life through my blog section. Thanks for stopping by and feel free to get in contact with me through any of the links provided.
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


<H2> In Progress (Please Check Back Later.) </H2>
<ul>
<li> Quantified Self: My Solution to Personalized Health & Fitness Tracking <br>
<li> B-Vitamins and Fatigue. <br>
