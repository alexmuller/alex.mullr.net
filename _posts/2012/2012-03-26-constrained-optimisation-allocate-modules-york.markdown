---
date: '2012-03-26 21:05:20'
layout: blog_2010
slug: constrained-optimisation-allocate-modules-york
status: publish
title: Constrained optimisation to allocate modules at York
description: My final year university project involved creating an application
             for students to select their optional modules. It was great fun to
             work on.
wordpress_id: '792'
categories:
- education
tags:
- development
- university
- York
---

A week ago today I handed in my final-year project in Computer Science (the
infamous dissertation that the fine people of Twitter are completely bored of
hearing me talk about). Like most in the department, mine consisted of about
20,000 words over seventy pages and a ten minute presentation describing the
work I'd been doing for the last year or so. According to the staff involved,
a University software project implemented by a student was something that had
never been tried before, and as I had such a fun time doing it I thought I'd
write a bit here. The aim was to create software that allocates students to
modules.

The project had two fairly distinct halves: a web interface to let students
express their preferences for optional modules, and a bit of software to take
that input and do the allocation. The end result had to satisfy constraints
from the departments (e.g. a class can't have more than _x_ students), while
also trying to keep students as happy as possible - it's a [constrained
optimisation](https://en.wikipedia.org/wiki/Constraint_optimization) problem.
The more I think about it, this project could not have been any more perfect
for me; half web stuff, half maths. Lovely.

The web development side of things was nothing too outrageously challenging. A
lot of research and testing with staff and students to make sure it was as
easy to use as possible, though the end product is just a jQuery `sortable`
implementation. Those of you who have used the YUSU site to vote during
elections will recognise that this software goes for the same mental model.
Students in the Departments of History and Archaeology noticed that too, which
was wonderful. Here's [a bit of video](https://vimeo.com/36601883) of one of
the earlier functional prototypes (on an iPad, because iPads make everything
cooler) - please excuse the music:

<iframe src="http://player.vimeo.com/video/36601883?color=d0dae9" width="500" height="375" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="">&nbsp;</iframe>

The constrained optimisation and linear programming stuff was where it started
to get really interesting from a computer science point of view. The first I'd
heard of CO was in about May last year, so having [an expert
supervisor](http://www-users.cs.york.ac.uk/~jc/) was more than a little
helpful. We used a solver (in this case [Gurobi](http://www.gurobi.com/)) to
save a whole load of work on the implementation, and I'm shocked by how
powerful it is. It's got wonderful interfaces for several languages and is
completely free for academic use! Linear programming and all that related gunk
is such a huge field that if you try hard enough I bet you'll be able to think
of somewhere you could use it.

Once it was all set up, it's just a case of creating a ton of (binary)
variables, defining the objective function (what the solver should try to
achieve), loading in the constraints and hitting the big red button. This
system used the following:

* Binary variables: one for every possible allocation (an allocation is a
  _student, module_ pair), set to 1 if the student is allocated the module or
  0 otherwise.
* Objective function: a linear function that can be maximised or minimised by
  the solver. I chose to include every binary variable with a coefficient
  indicating the "goodness" of that allocation, which is based on the rank the
  student gave.
* Constraints: each class had a maximum and minimum size, and each student had
  to take the required number of classes.

We're talking about painfully simple code to interact with Gurobi, too. Here's
a bit of it in Python:

    from gurobipy import *
    
    model = Model("modalloc") # new Gurobi model
    gurobivar = model.addVar(vtype=GRB.BINARY, name=student+"_"+module) # new binary var
    model.update()
    objfn = LinExpr() # objective function
    objfn.addTerms(rank_coeff[ranks[(student, module)]], gurobimavs[student][module])
    model.addConstr(num_students <= modules[module]['max'], "classmax") # constraint
    model.optimize()

(There's a slightly [more fully-featured
gist](https://gist.github.com/1790565) available, if you're that way
inclined…)

<blockquote class="twitter-tweet"><p>35 days until actual students start using my software. 50 days until the dissertation is due. 97 days until I finish at York. Gulp?</p>&mdash; Alex Muller (@alexmuller) <a href="https://twitter.com/alexmuller/status/161553180281409537" data-datetime="2012-01-23T20:57:34+00:00">January 23, 2012</a></blockquote>

I think what I love most about this software is that it's a great example of a
nice modular web project: none of the parts by themselves are horrendously
complex, but they come together to make a system that **actually solved a
problem** - code I wrote was used by 800 students in two departments, and the
data it generated is now stored in the central student database. All my
fingers are crossed that [IT Services in
York](http://www.york.ac.uk/it-services/) will be able to take the code on,
spruce it up a little and offer it to many more departments next year. [The
report's on GitHub](https://github.com/alexmuller/york-dissertation), but
private at the moment. I'll make it public once it's marked if I'm able to.

<blockquote class="twitter-tweet"><p>Final-year project: simultaneously the best, worst, scariest and fun (academic) thing I've ever done.</p>&mdash; Alex Muller (@alexmuller) <a href="https://twitter.com/alexmuller/status/165100523882692608" data-datetime="2012-02-02T15:53:26+00:00">February 2, 2012</a></blockquote>

<blockquote class="twitter-tweet"><p>The most proud I've ever been of anything. (If there's a typo on the front page I'm exiting via a 3rd floor window) <a href="http://t.co/JkVCwHQN" title="http://twitpic.com/8y0t1n">twitpic.com/8y0t1n</a></p>&mdash; Alex Muller (@alexmuller) <a href="https://twitter.com/alexmuller/status/181375873281306624" data-datetime="2012-03-18T13:45:52+00:00">March 18, 2012</a></blockquote>
