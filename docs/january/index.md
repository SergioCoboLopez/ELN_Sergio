---
layout: default
title: January
nav_order: 6
---

# January

## January 2 to 6

Goals of the week

-Finish GoldSim model
-Finish presentation
-Do bulk part of presentation for Jan 12

Reading
Origin of species
Smart brevity


## January 2
The next thing I want to do is to change concentrations of $$O_2$$ and/or glucose at day 0 (day +2)
There are several types of elements in GoldSim that appear to be helpful.
This is confusing to me: all I need is to change the concentration of $$O_2$$ or glucose at day 2.
Then, I guess I need some element that can do these two instructions. I found how to add 
concentration, but not the timed part.
The event delay is not helpful to me. I might need time series.
I got it now.
I have something that can be functional now. I would need to:
1. Rename this discrete addition.
2. Link it to $$O_2$$ or glucose.
3. Test it again.
4. Repeat until I have all the corresponding experiments implemented.

The sugar part is done. I am going to implement O2. However, I still don't know if these
are single interventions or continuous ones (i.e., add a constant supply of O2 during some time)
It appears now that it is not a single intervention but a rate; it is like having a hose turn on.
The metabolic part of the model looks very strange and redundant to me now. Is it correct?

There is no way we can cross the Goldilocks line with these concentrations. Here is the solution:
Forest was saying that I should start at the Goldilocks line (give it or take a factor 6 or 12). For
practical purposes, all I need to do is to fix one concentration and calculate the other one. Which
concentration is more reliable? O2 or sucrose?

I need to change single additions by constant flow of O2 and constant concentration of sucrose.
I need to recalculate eDAR for sucrose and set the concentrations at the Goldilocks line.
I need to have a glucose dependent Hill Function (you can grow without O2, but you cannot grow
without sugar). I need to know what a crazy sugar concentration is like to design the Hill function.

Now that I have a reliable O2 concentration I can calculate the sucrose concentration for the
Goldilocks line. I will have to decide what eDAR looks like.
I've been thinking that the sugar hill function should peak relatively fast and at relatively low sugar concentrations.
I do not need a modified Hill function for that, really...So I need to define the sugar concentration at which the 
Hill function is 0.5. I think first I should calculate the initial sugar (sucrose) so that I start off at the 
Goldilocks line.

Things I have to do:
1. Look for the concentration of fructose that produces a Goldilocks line at the beginning.
2. At that concentration of sugar, growth is not limited. Set K_DOC to half of that initial concentration.
3. Change events for constant supply of O2 and constant concentration of sucrose.
4. Link hill functions to growth rates.