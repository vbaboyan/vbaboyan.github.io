---
title: "Markdown Help"
date: 2019-11-10
tags: [data science, r, markdown]
excerpt: "A place to keep helpful r markdown code"
---

# H1 Heading

## H2 Heading

### H3 Heading

Here's some basic text

And here's some *italics*

Here's some **bold** text.

What about a [link](https://github.com/vbaboyan)

Here's a bulleted list:
* First issue_term
+ Second issue_term
- Third item

Here's a numbered list:
1. First
2. Second
3. Third

Python code block:
```python
    import numpy as np

    def test_function(x, y);
      z = np.sum(x,y)
      return z
```

R code block:
```r
library(tidyverse)
df <- read_csv("some_file.csv")
head(df)
```

Here's an image:
<img src="{{ site.url }}{{site.baseurl }}/assets/images/Harden.png" alt="James Harden">
