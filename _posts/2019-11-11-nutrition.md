---
title: "Potassium and Adrenal Fatigue"
date: 2019-11-11
tags: [data science, nutrition, data visualization]
excerpt: "A data science approach to nutrition"
---

By now it is pretty well-established that the Standard American Diet (SAD) is a suboptimal approach to achieving adequate nutrition. One area where this fact is exceptionally pronounced is in potassium intake. Less than 2% of Americans achieve the recommended daily intake of potassium (4700mg), which is most likely the result of not consuming enough greens. When i've brought this stat up with friends, a common question is, "how much potassium is there in a banana?". Your typical banana contains about 300mg of Potassium, so unless you're eating around 15 bananas a day, you're probably not aware of how much you really need for your body to function appropriately. The reason I felt compelled to look into this in the first place was because I noticed being more anxious and sluggish than usual, especially at times when I shouldn't have been. My research led me to a possible mechanism for this that falls into the general category of "adrenal fatigue". An interesting relationship appears to exist between the adrenal function and potassium levels in the body. Specifically, a negative association has been shown between elevated stress-hormone (i.e., cortisol) and potassium levels are depleted.

Personally, I think a widely neglected factor contributing to such unnatural spikes in cortisol is excessive caffeine intake. Caffeine has been shown to stimulate the adrenals in precisely this manner, such that levels of cortisol after caffeine consumption are similar to those experienced during an acute stress. As a grad student, i'll be the first to admit that **I drink way too much coffee**. Potassium, on the other hand, appears to have a *calming effect* on the body and is even referred to as the body's  "natural tranquilizer". It's reasonable to expect that the combination of elevated cortisol and depleted potassium can't be good for the body. Factor in elevated cholesterol levels that often accompany the SAD diet, and your circulation system could be a mess. What are some ways to counteract these mechanisms and get closer to the 4700mg recommendation? Let's see if we can use some data to answer this question using a publicly available dataset provided by the [USDA National Nutrient Database](https://gist.github.com/syntagmatic/8702807).

Missing stuff:
* Hyper-excitability
* Fight-or-flight response

# Let's take a look at the relationships between macronutrients found in foods
Before, diving into potassium-rich foods specifically, it's helpful to know how all the macronutrients are generally related.


<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Corplot.png" alt="Nutrition Correlation Heatmap">

The symmetric image on the left is a "heatmap" that renders the pairwise correlations between nutrition contents. The blue pixels in the image represent positive correlations for the corresponding row/column pair, and vice versa for red pixels. At a glance, you can see how foods that are high in potassium tend to also be high in other vital nutrients like Iron, Fiber, and Magnesium. By grouping variables that tend to have a shared presence in foods, we can visualize how certain nutrients band together. Let's take a closer look at group containing potassium.

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/wordclouds.png" alt="Potassium WordCloud">

## Step 1: Exploratory data analysis

1. Filtering by RDA
2. PCA based sorting and wordcloud
3. Personal favorites


## Conclusions and recommendations

R code block:
```r
library(corrplot)
### Step 1: Data Prep #####
nutrition <- read.csv("~/Dropbox/nutrition.csv",header = T)
names(nutrition) <- gsub(names(nutrition),pattern = "..g.",replacement = "",fixed = T)
nutr.dset <- nutrition[,4:ncol(nutrition)-1]
head(nutr.dset)

```
