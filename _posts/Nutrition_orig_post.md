---
layout: single
title: "Potassium Deficiency and Adrenal Function"
date: 2019-11-19
tags: [data science, nutrition, data visualization]
excerpt: "A data science approach to achieving adequate nutrition."
permalink: /nutrition/
---

<!-- # Tips
1. Dont focus on adrenal fatigue since it may raise concerns about having a serious disease
2. Make the post about potassium and how your adrenals need it
3. Conclude with a list of recommendations: 1) Sleep, 2) Potassium Deficiency, 3) Clinical Depression / Lack of Motivation -->

By now it is pretty well-established that the Standard American Diet (SAD) is a suboptimal approach to adequate nutrition. One area where this is exceptionally pronounced is in potassium intake. Less than 2% of Americans achieve the recommended daily intake of potassium (4700mg), which is most likely the result of not consuming enough greens. When i've brought these numbers up with friends, a common question is: "How much potassium is there in a banana"? For reference, your typical banana contains about 300mg of Potassium, so unless you're eating around 15 bananas a day, you're probably not aware of how much you really need for your body to function appropriately. In general, the reason I felt compelled to look into this in the first place was because I noticed being more anxious than usual, especially at times when I shouldn't have been. Before heading to a physician, it's important to self-reflect by ruling out obvious (e.g., lack of adequate sleep) and not so obvious (e.g., lack of adequate nutrition) culprits in your lifestyle. With respect to the latter, I really wasn't sure. What would a nutritionist say about this? A guiding principle in situations like this are to make sure that the body's hardware is properly maintained before pathologizing it's software. Indeed, my research led me to a possible mechanism, "adrenal fatigue".

## Potassium and Adrenal Fatigue
A fascinating relationship appears to exist between adrenal function and potassium levels in the body. Studies have shown that cortisol (i.e., the stress hormone) and potassium levels are negatively correlated. Personally, I think a widely neglected factor contributing to such unnatural spikes in cortisol - aside from the lack of adequate vegetable consumption - is excessive caffeine intake [[1]]. Caffeine has been shown to undesirably stimulate the adrenals, such that levels of cortisol after caffeine consumption are similar to those experienced during an acute stress response. As a grad student, i'll be the first to admit that *I drink wayyyy too much coffee*. Potassium, on the other hand, appears to have a *calming effect* on the body and is even referred to as the body's  "natural tranquilizer". In fact, potassium bromide was once used as a sedative for clinical patients and even as an anti-convulsant to treat epilepsy [[2]]. In any event, it's reasonable to expect that the combination of elevated cortisol and depleted potassium can't be good for your body. This combination can potentially lead your body into a chronically active fight-or-flight state, which essentially makes all of your vital organs *hyper-excitable*. Indeed, one of the primary characteristics of an unhealthy adrenal is irritability and anxiety. Once you factor in the elevated cholesterol levels that often accompany the SAD diet, the body's circulation system could be a real mess [[3]]. What are some ways to counteract these mechanisms and get closer to the 4700mg recommendation? Let's see if we can use some data to answer this question using a publicly available dataset provided from the [U.S. Agricultural Research Service Food Data Central](https://www.myfooddata.com/).

# LSD: Looking at Some Data
Before, diving into potassium-rich foods specifically, it's helpful to know how macronutrients are generally related.

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Corplot.png" alt="Nutrition Correlation Heatmap">

The plot on the left is a "heatmap" that displays the correlations between nutrition contents as a pixellated image. The blue-ish pixels in the image represent positive correlations, and vice versa for red-ish pixels. When you zoom in on the image, you can see how foods that are high in potassium tend to also be high in other vital nutrients like Iron, Fiber, and Magnesium. For me, this makes sense because i've come across so may articles or videos that discuss the nutritional value of each of these contents, and often times it sounds like they have highly overlapping roles in the body. To make this point clear, i've used a data-driven sorting tool, called "Hierarchical Clustering", to arrange the nutrients in the image based on how correlated they are and grouped them  accordingly (denoted by the colored squares on the left and the "dendrogram" on the right). Let's take a closer look at the group containing potassium.


## Data Filtering
What I wanted to do next was to look at the foods that we're loaded with these nutrients. But first, we should scale the nutrient contents by their recommended daily intake (RDI) values to make them comparable. As mentioned before, the RDI for potassium is 4700mg so let's take a look at which food categories fall into the upper 90th percentile of RDI values for potassium - which tends to be in the 10-20% RDI range. The pie chart below gives us this information, and it's no surprise that vegetables are a big chunk of the pie:

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Pie.png" alt="Potassium Pie Chart">

If we're interested in making a dietary recommendation, I think it's easiest to work with products that can be easily thrown into a blender for a smoothie. So let's look at the following 3 categories: (1) Nut and Nut products, (2) Fruits and Fruit Juices, (3) and Vegetable and Vegetable products. What are some products that fall into this category of high-potassium foods? We can use a "Word Cloud" to visualize the most common words found in these foods items, after removing those that fall out side of the 10-20% RDI range. Here's what that looks like for each of the 3 categories of interest:

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/wordclouds2.png" alt="Potassium WordCloud">

The word cloud on the top-left are the potassium-rich foods found in the Nut and Nut Products and the cloud on the top-right are the foods found in the Fruit and Fruit Juices. The cloud on the bottom is a lot larger since most potassium-rich foods tend to be Vegetable and Vegetable products. This plot isn't perfect - you can easily spot some uninformative words (e.g., "english", "partially", "creamed", "products", etc) - but data isn't a substitute for common sense. Also, the size of the words are not weighted by potassium content. Rather, theses are the words that are most commonly listed in the table of high-potassium foods (e.g. Kale definitely has more potassium than a potato). But you can nonetheless get a good idea of the foods found in each category. What stands out to me most is how the beloved banana is absent in these results, while the plantain is not. This method also confirms what we had expected to be true all along: Avocados are God's gift to humankind.

## Ranking Food Items on the Basis of Nutrient Combos

Considering the nutrient correlations shown above, wouldn't it be nice to treat potassium as part of a multi-dimensional nutritional construct? I'd find it useful to have some metric that combines the Iron, Magnesium, Fiber, and Potassium contents found in the individual food items to tell us how much of that **combination** that food has available. If we can do this, we can then rank the foods along this new axis. Using a popular approach called principal components analysis (PCA), we can do just that. The details of PCA are beyond the scope of this post, but simply stated, this method allows us to generate a special score that reflects how much a given food item is loaded with the specified nutrient combos. I'll be putting this section together next, so check back soon :)

<!-- #Here's what that looks like:

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/pca.png" alt="Nutrient Multidimensionality using PCA">

## Insights

1. Be cautious of the fruits given their high sugar contents
2. Brazilnuts seem like a great snack
3. Potassium is highly correlated with Iron, Magnesium, and Fiber
4. Spinach, Kale, Squash, Avocados, and coconuts are all fantastic.
5. The Taro root,
6. Eat more greens.
7. Coconut Water for smoothies
8. Beat Greans for salads -->

[1]:https://www.ncbi.nlm.nih.gov/pmc/articles/PMC2257922/
[2]:https://www.chemistryworld.com/podcasts/potassium-bromide/6805.article
[3]:https://www.ahajournals.org/doi/full/10.1161/01.CIR.98.12.1198

R code block:
```r
library(corrplot)
### Step 1: Data Prep #####
nutrition <- read.csv("~/Dropbox/nutrition.csv",header = T)
names(nutrition) <- gsub(names(nutrition),pattern = "..g.",replacement = "",fixed = T)
nutr.dset <- nutrition[,4:ncol(nutrition)-1]
head(nutr.dset)

```