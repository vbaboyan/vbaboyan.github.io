---
title: "Potassium and Adrenal Fatigue"
date: 2019-11-11
tags: [data science, nutrition, data visualization]
excerpt: "A data science approach to nutrition"
---

## Background
By now it is pretty well-established that the Standard American Diet (SAD) is a suboptimal approach to achieving adequate nutrition. One area where this fact is exceptionally pronounced is in potassium intake. Less than 2% of Americans achieve the recommended daily intake of potassium (4700mg), which is most likely the result of not consuming enough greens. When i've brought this stat up with friends, a common question is, "how much potassium is there in a banana?". Your typical banana contains about 300mg of Potassium, so unless you're eating around 15 bananas a day, you're probably not aware of how much you really need for your body to function appropriately. The reason I felt compelled to look into this in the first place was because I noticed being more anxious and sluggish than usual, especially at times when I shouldn't have been. My research led me to a possible mechanism for this that falls into the general category of "adrenal fatigue". An interesting relationship appears to exist between the adrenal function and potassium levels in the body. Specifically, a negative association has been shown between elevated stress-hormone (i.e., cortisol) and potassium levels are depleted.

Personally, I think a widely neglected factor contributing to such unnatural spikes in cortisol is excessive caffeine intake. Caffeine has been shown to stimulate the adrenals in precisely this manner, such that levels of cortisol after caffeine consumption are similar to those experienced during an acute stress. As a grad student, i'll be the first to admit that **I drink way too much coffee**. Potassium, on the other hand, appears to have a *calming effect* on the body and is even referred to as the body's  "natural tranquilizer". It's reasonable to expect that the combination of elevated cortisol and depleted potassium can't be good for the body. Factor in elevated cholesterol levels that often accompany the SAD diet, and your circulation system could be a mess. What are some ways to counteract these mechanisms and get closer to the 4700mg recommendation? Let's see if we can use some data to answer this question using a publicly available dataset provided by the [USDA National Nutrient Database](https://gist.github.com/syntagmatic/8702807).

Missing stuff:
* Hyper-excitability
* Fight-or-flight response

# Let's take a look at the relationships between macronutrients found in foods
Before, diving into potassium-rich foods specifically, it's helpful to know how all the macronutrients are generally related.


<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Corplot.png" alt="Nutrition Correlation Heatmap">

The symmetric image on the left is a "heatmap" that renders the pairwise correlations between nutrition contents. The blue pixels in the image represent positive correlations for the corresponding row/column pair, and vice versa for red pixels. At a glance, you can see how foods that are high in potassium tend to also be high in other vital nutrients like Iron, Fiber, and Magnesium. By grouping variables that tend to have a shared presence in foods, we can visualize how certain nutrients band together. Let's take a closer look at group containing potassium.


## Data Filtering
Next, I wanted to scale the nutrient contents by their recommended daily intake (RDI) values. As mentioned before, the RDI for potassium is 4700mg so let's take a look at some common foods that fall in the upper 90th percentile of RDI values for potassium - which tends to be in the 10-20% RDI range. Personally, i'm interested in foods that are low in sugar and animal proteins. That said, three of the predominant food groups that match these interests are (1) nuts and nut products, (2) Fruits and Fruit Juices, (3) and Vegetable and Vegetable products.

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Pie.png" alt="Potassium Pie Chart">

By discarding the uninteresting food items that fall outside of that 10-20% range, we can generate a so-called "Word Cloud" for each of the food groups to get a sense of the products that fall into each category. Here's what that looks like for each of the 3 categories of interest:

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/wordclouds2.png" alt="Potassium WordCloud">

The word cloud on the top-left are the potassium-rich foods found in the Nut and Nut Products and the cloud on the top-right are the foods found in the Fruit and Fruit Juices. The cloud on the bottom is a lot larger since most potassium-rich foods tend to be Vegetable and Vegetable products which makes sense. This Wordl-Cloud method isn't perfect, as you can easily spot uninformative words in them (e.g., "english", "partially", "creamed", "products", etc). But it's as they say, **data isn't a substitute for common sense**. You can nonetheless get a good idea of the foods in each category. What stands out to me most is how the banana is absent in these results, while the plantain is not. Interesting. This method also provides evidence that avocados are God's gift to humankind.

## Rankings Food Items on the Basis of Nutrient Combos

Considering the heatmap shown above, it makes sense to treat potassium as being part of this larger nutrient construct. So it might be useful to generate some kind of score that takes into account the Iron, Magnesium, Fiber, and Potassium content of a food item in order to rank it relative to the rest. Using a principal components analysis (PCA), we can do exactly that. The details of PCA are beyond the scope of this post, but simply stated, this method allows us to generate a linear combination of the nutrients in order to generate a score that represents how much a given food item is loaded with the specified nutrient combos.


R code block:
```r
library(corrplot)
### Step 1: Data Prep #####
nutrition <- read.csv("~/Dropbox/nutrition.csv",header = T)
names(nutrition) <- gsub(names(nutrition),pattern = "..g.",replacement = "",fixed = T)
nutr.dset <- nutrition[,4:ncol(nutrition)-1]
head(nutr.dset)

```
