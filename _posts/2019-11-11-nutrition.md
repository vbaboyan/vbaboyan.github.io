---
title: "Potassium and Adrenal Fatigue"
date: 2019-11-11
tags: [data science, nutrition, data visualization]
excerpt: "A data science approach to nutrition"
---

## Background
By now it is pretty well-established that the Standard American Diet (SAD) is a suboptimal approach to achieving adequate nutrition. One area where this fact is exceptionally pronounced is in potassium intake. Less than 2% of Americans achieve the recommended daily intake of potassium (4700mg), which is most likely the result of not consuming enough greens. When i've brought this stat up with friends, a common question is: "How much potassium is there in a banana"? Your typical banana contains about 300mg of Potassium, so unless you're eating around 15 bananas a day, you're probably not aware of how much you really need for your body to function appropriately. The reason I felt compelled to look into this in the first place was because I noticed being more anxious and sluggish than usual, especially at times when I shouldn't have been. Before heading to a physician, I felt it was important to take a look at my diet. What would a nutritionist say? I think it's essential to make sure that the body's hardware is properly maintained before pathologizing it's software. Indeed, my research led me to a possible mechanism for these symptoms that falls into the general category of "adrenal fatigue". An interesting relationship appears to exist between adrenal function and potassium levels in the body. Studies have shown that elevated stress-hormone (i.e., cortisol) and potassium levels are negatively correlated.

Personally, I think a widely neglected factor contributing to such unnatural spikes in cortisol - aside from the lack of adequate vegetable consumption - is excessive caffeine intake. Caffeine has been shown to undesirably stimulate the adrenals, such that levels of cortisol after caffeine consumption are similar to those experienced during an acute stress response. As a grad student, i'll be the first to admit that *I drink wayyyy too much coffee*. Potassium, on the other hand, appears to have a *calming effect* on the body and is even referred to as the body's  "natural tranquilizer". It's reasonable to expect that the combination of elevated cortisol and depleted potassium can't be good for your body. This combination can potentially lead your body into a chronically active fight-or-flight state, which is essentially make all of your vital organs (brain-included) *hyper-excitable*. Factor in elevated cholesterol levels that often accompany the SAD diet, and your circulation system could be a mess. What are some ways to counteract these mechanisms and get closer to the 4700mg recommendation? Let's see if we can use some data to answer this question using a publicly available dataset provided from the [U.S. Agricultural Research Service Food Data Central](https://www.myfooddata.com/).

# Let's take a look at the relationships between macronutrients found in foods
Before, diving into potassium-rich foods specifically, it's helpful to know how all the macronutrients are generally related.


<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Corplot.png" alt="Nutrition Correlation Heatmap">

The symmetric image on the left is a "heatmap" that renders the pairwise correlations between nutrition contents. The blue pixels in the image represent positive correlations for the corresponding row/column pair, and vice versa for red pixels. At a glance, you can see how foods that are high in potassium tend to also be high in other vital nutrients like Iron, Fiber, and Magnesium. By grouping variables that tend to have a shared presence in foods, we can visualize how certain nutrients band together. Let's take a closer look at group containing potassium.


## Data Filtering
Next, I wanted to scale the nutrient contents by their recommended daily intake (RDI) values. As mentioned before, the RDI for potassium is 4700mg so let's take a look at some common foods that fall in the upper 90th percentile of RDI values for potassium - which tends to be in the 10-20% RDI range. Personally, i'm interested in foods that are low in sugar and animal proteins. That said, three of the predominant food groups that would make good candidates for smoothie ingredients are (1) Nut and Nut products, (2) Fruits and Fruit Juices, (3) and Vegetable and Vegetable products.

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Pie.png" alt="Potassium Pie Chart">

By discarding the uninteresting food items that fall outside of that 10-20% range, we can generate a so-called "Word Cloud" for each of the food groups to get a sense of the products that fall into each category. Here's what that looks like for each of the 3 categories of interest:

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/wordclouds2.png" alt="Potassium WordCloud">

The word cloud on the top-left are the potassium-rich foods found in the Nut and Nut Products and the cloud on the top-right are the foods found in the Fruit and Fruit Juices. The cloud on the bottom is a lot larger since most potassium-rich foods tend to be Vegetable and Vegetable products which makes sense. This Word-Cloud method isn't perfect, as you can easily spot some uninformative words (e.g., "english", "partially", "creamed", "products", etc). But it's as they say, **data isn't a substitute for common sense**. You can nonetheless get a good idea of the foods in each category. What stands out to me most is how the beloved banana is absent in these results, while the plantain is not. This method also confirms what we had expected to be true all along: Avocados are God's gift to humankind.

## Ranking Food Items on the Basis of Nutrient Combos

Considering the nutrient correlations shown above, wouldn't it be nice to treat potassium as part of a multi-dimensional nutritional construct? Specifically, it'd be useful to have some metric that combines the Iron, Magnesium, Fiber, and Potassium contents in the individual food items to tell us how much of that combination is present. If we can do this, we can then rank the foods along this new axis. Using a popular approach called principal components analysis (PCA), we can do just that. The details of PCA are beyond the scope of this post, but simply stated, this method allows us to generate a special score that reflects how much a given food item is loaded with the specified nutrient combos. I'll be putting this section together, next so check back soon ;)

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

R code block:
```r
library(corrplot)
### Step 1: Data Prep #####
nutrition <- read.csv("~/Dropbox/nutrition.csv",header = T)
names(nutrition) <- gsub(names(nutrition),pattern = "..g.",replacement = "",fixed = T)
nutr.dset <- nutrition[,4:ncol(nutrition)-1]
head(nutr.dset)

```
