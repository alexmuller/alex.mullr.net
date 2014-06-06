---
date: '2014-06-06 19:30:00'
layout: blog_2012
slug: performance-platform-dashboard-admin
status: publish
title: Performance Platform dashboard admin
description: |
  Prototyping an interface for administering dashboards
  on GOV.UK.
---

After releasing [about a hundred dashboards][pp-services] in the last couple of weeks,
members of the product team I'm part of at the Government Digital Service each spent a
week prototyping standalone projects that we thought would be of use to the Performance Platform.
[Tom][tombooth] and I created a basic interface for administering dashboards.

![A pen and paper sketch of the list interface](https://s3.amazonaws.com/alexmuller/static/blog/2014-06-01-perfplat-dashboard-admin-sketch.jpg)

We only had a week so we didn't want to spend time thinking about where it would
be hosted or how authentication could work, so we created a [Node.js][node] app
that non-technical members of our team can download and run locally.

We ended up with an application that uses a GitHub repository to store our
configuration and does file modification, committing, pushing, pulling and deploying
through a browser. It's hacky but it does exactly what we need it to do. SSH handles
authentication in the background and GitHub provides us with a lovely interface
for a history of who, what and when things changed.

![A screenshot of the list interface](https://s3.amazonaws.com/alexmuller/static/blog/2014-05-31-perfplat-dashboard-admin.png)

Hopefully this marks the end of [Matt][matt] having to write out text changes into
Pivotal Tracker stories just to wait for a developer to copy and paste them into an
editor and push a commit.

I'm really happy with what we achieved in 5 days. The [Performance Platform dashboard admin][pp-admin]
app is on GitHub, as is [the config repository][config]. I'm looking forward to approaching
this project slowly and carefully now that we've got a good idea of the direction it should
go in.

[pp-services]: https://www.gov.uk/performance/services
[tombooth]: https://twitter.com/tombooth
[node]: http://nodejs.org/
[matt]: https://twitter.com/imattharrington
[pp-admin]: https://github.com/alphagov/performanceplatform-dashboard-admin
[config]: https://github.com/alphagov/spotlight-config
