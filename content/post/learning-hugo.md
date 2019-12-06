---
title: This site
description:
date: "2019-08-21T22:04:22+01:00"
publishDate: "2019-08-21T22:04:22+01:00"
summary: Setting up this website
tags: ["hugo"]
---

### Intro

Second time setting up a static site with hugo and it starts looking
better already.

Apparently hugo uses 2 types of pages: List and Single pages. Homepage
is a bit different than others. It is technically a List page, it can
have its own template at layouts/index.html

And the flow goes from layout, to the page you are looking at.

To find out what _index.md, look at the lists example and the lookup
order.

- https://gohugo.io/templates/homepage/
- https://gohugo.io/templates/lists/
- https://gohugo.io/templates/views/
- https://gohugo.io/templates/lookup-order/

### Loading of templates

Here's my understanding of the templating stuff as of today 2019-09-03:

In your content tree you have directories (e.g. `content/foo/`). hugo
renders http://yourdomain.com/foo using _index.md files, cascading
from `/themes/mytheme/_layouts/foo/_index.md`,
`/_layouts/foo/_index.md`, and finally `/content/foo/_index.md`.

From one to the next you can "yield" (rails) using `{{.Content}}`.

Homepage is a bit special.

### Code snippets

https://gohugo.io/content-management/syntax-highlighting/

https://gohugo.io/templates/shortcode-templates/
```
    local foo = bar
    for k, v in map(t) do
      print(k, v)
    end
```

To highlight code, use this shortcode (delete the marked whitespaces)

```
{{ < highlight lua >}}
  ^ local foo = bar
    for k, v in map(t) do
      print(k, v)
  v end
{{ < /highlight >}}
```


### Tags

Adding tags in the theme I'm using.

- https://gohugo.io/templates/taxonomy-templates/#example-list-tags-in-a-single-page-template
