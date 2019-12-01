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
    #alt: "placeholder image 1"
    #title: "About"
    excerpt: "An informal introduction."
    url: /about/
    btn_label: "About"
    btn_class: "btn--primary"
#feature_row2:
  - image_path: assets/images/splash/unsplash2.jpg
    #image_caption: "Image courtesy of [Unsplash](https://unsplash.com/)"
    #alt: "Blog"
    #title: "Blog"
    excerpt: "Recent blog posts."
    url: /blog/
    btn_label: "Read More"
    btn_class: "btn--primary"
#feature_row3:
  - image_path: assets/images/splash/unsplash3.jpg
    #title: "CV"
    excerpt: "A formal introduction."
    url: /CV/
    btn_label: "CV"
    btn_class: "btn--inverse"
---

{% include feature_row id="intro" type="center" %}

{% include feature_row %}

<!-- {% include feature_row id="feature_row" type="left" %}
{% include feature_row id="feature_row2" type="right" %}
{% include feature_row id="feature_row3" type="left" %} -->
