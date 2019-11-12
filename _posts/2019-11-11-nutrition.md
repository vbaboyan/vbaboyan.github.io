---
title: "Potassium and Adrenal Fatigue"
date: 2019-11-11
tags: [data science, nutrition, data visualization]
excerpt: "A data science approach to nutrition"
---

By now it is pretty well-established that the Standard American Diet (SAD) is a suboptimal approach to achieving adequate nutrition. One area where this fact is exceptionally pronounced is in potassium intake. Less than 2% of Americans achieve the recommended daily intake of potassium (4700mg). When i've brought this stat up with friends, the common response is, "how much is there in a banana?". Your typical banana contains about 300mg of Potassium, so unless you're eating around 15 bananas a day, you're probably not aware of how much you really need for your body to function appropriately. The reason I felt compelled to look into this in the first place was because I noticed being more anxious and sluggish than usual at times when I shouldn't have been. My research led me to a possible mechanism for this that falls into the general category of "adrenal fatigue". An interesting relationship appears to exist between the adrenal glands in your body and potassium. Specifically, when there are elevated stress-hormone levels in the body (i.e., cortisol), potassium levels are depleted. Personally, I think a widely neglected factor contributing to such unnatural spikes in cortisol is excessive caffeine intake. Caffeine has been shown to stimulate the adrenals in precisely this manner, such that levels of cortisol after caffeine consumption are similar to those experienced during an acute stress. As a grad student, i'll be the first to admit that **I drink too much coffee**. Potassium, on the other hand, appears to have a *calming effect* on the body and is even referred to as a "natural tranquilizer". So the combination of elevated cortisol and depleted potassium can't be good for the body. If you add elevated cholesterol levels that often accompany the SAD diet, your circulation system could be a mess. So how can someone change up their routine to get closer to the 4700mg recommendation? Let's see if we can use some data to answer this question using a publicly available dataset provided by the [USDA National Nutrient Database](https://gist.github.com/syntagmatic/8702807).

Missing stuff:
* Hyper-excitability
* Fight-or-flight response

# Let's take a look at the relationships between macronutrients found in foods
Before, diving into potassium-rich foods specifically, it's helpful to know how all the macronutrients are generally related.

<img src="{{ site.url }}{{site.baseurl }}/assets/images/figs/Corplot.png" alt="Nutrition Correlation Heatmap">


## Step 1: Exploratory data analysis

Here's a numbered list:
1. Data Prep.
2. Data viz.
3. Hypotheses


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
