---
date: '2014-11-29 13:30:00'
layout: blog_2012
slug: github-pages-without-javascript
status: publish
title: GitHub Pages that don't depend on JavaScript
description: |
  Doing stuff with JavaScript is the default way
  people think about web development, even when
  the alternative is just as easy.
---

There's a blog post that explains [how to use GitHub Pages metadata
to display a list of repositories][github-metadata-post]. It's great
because it's one of the only uses of `site.github.public_repositories`
that I can find online. But part way through it says:

> I needed to get the metadata into JavaScript

[github-metadata-post]: http://www.carsonshold.com/2014/05/github-metadata-with-jekyll-and-javascript/

Both the [Shopify][shopify-gh-pages] and [Yahoo!][yahoo-gh-pages] GitHub
Pages instances use that technique, and as a result if you load those
pages without JavaScript you'll get something that looks a bit broken.

We're [using the same metadata for GOV.UK's GitHub Pages][alphagov-github-repo].
I'd bet our repository hasn't had as much work go into it as those other two, but
our text is right in the HTML, so the page works if the JavaScript fails
to execute.

At the Government Digital Service we try and build things that are [as resilient
to failure as possible][govuk-progressive-enhancement]. [alphagov.github.io][]
is quite possibly the least important thing we do, but it feels nice to create
web things in the best way that we can all the time.

GDS has jobs currently available for developers and junior developers, so if
this sounds like the way you work [make sure you apply][gds-jobs].

[shopify-gh-pages]: https://shopify.github.io/
[yahoo-gh-pages]: https://yahoo.github.io/
[alphagov-github-repo]: https://github.com/alphagov/alphagov.github.io/blob/e0099c76ab506f9b2720c2370976d26604a1b94f/index.html#L54-64
[govuk-progressive-enhancement]: https://www.gov.uk/service-manual/making-software/progressive-enhancement
[alphagov.github.io]: https://alphagov.github.io/
[gds-jobs]: https://gds.blog.gov.uk/jobs/#developer
