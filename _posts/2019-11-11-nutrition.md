---
title: "Potassium and Adrenal Fatigue"
date: 2019-11-11
tags: [data science, nutrition, data visualization]
excerpt: "A data science approach to nutrition"
---

By now it is pretty well-established that the Standard American Diet (SAD) is a suboptimal approach to achieving adequate nutrition. One area where this fact is exceptionally pronounced is potassium intake. Less than 2% of Americans achieve the recommended daily intake of potassium (4700mg). When i've brought this stat up with friends, the common response is "How much is in a banana?". Your typical banana contains about 300mg of Potassium. So unless you're eating around 15 bananas a day, you're probably not aware of how much you really need for your body to function appropriately. Recently, i've wanted to take a look at Potassium's role in the body, and the way I can operate within the daily intake guidelines with potassium-rich foods.

# Exploring nutrition contents

## Step 1: Exploratory data analysis
Dataset publicly available through [stagmatic](https://gist.github.com/syntagmatic/8702807)

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
