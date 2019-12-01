---
#title: "Splash Page"
layout: splash
#permalink: /splash-page/
#date: 2016-03-23T11:48:41-04:00
header:
  #overlay_color: "#000"
  #overlay_filter: "0.5"
  #overlay_image: /assets/images/splash/Header.png
  #actions:
  #  - label: "Download"
  #    url: "https://github.com/mmistakes/minimal-mistakes/"
  #caption: "Photo credit: [**Unsplash**](https://unsplash.com)"
#excerpt: "Bacon ipsum dolor sit amet salami ham hock ham, hamburger corned beef short ribs kielbasa biltong t-bone drumstick tri-tip tail sirloin pork chop."
intro:
  - excerpt: 'Welcome to my Personal Webpage'
feature_row:
  - image_path: assets/images/splash/unsplash1.jpg
    alt: "placeholder image 1"
    title: "About"
    #excerpt: "This is some sample content that goes here with **Markdown** formatting."
  - image_path: [assets/images/splash/unsplash2.jpg](/blog/)
    image_caption: "Image courtesy of [Unsplash](https://unsplash.com/)"
    alt: "placeholder image 2"
    title: "Blog"
    #excerpt: "This is some sample content that goes here with **Markdown** formatting."
    url: /blog/
    btn_label: "Archive"
    btn_class: "btn--primary"
  - image_path: assets/images/splash/unsplash3.jpg
    title: "CV"
    #excerpt: "This is some sample content that goes here with **Markdown** formatting."
---

{% include feature_row id="intro" type="center" %}

{% include feature_row %}
