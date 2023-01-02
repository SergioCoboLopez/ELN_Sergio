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