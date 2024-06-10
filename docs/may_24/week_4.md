---
layout: default
title: Week 4
parent: May 2024
nav_order: 4
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)| |
|(PH)| |
|(R)| |
|(Code)| |
|(O)| |


## May 28

**planes**

Planes are a class.
Each plane is an object of that class.
I think planes have at least two attributes: origin and destination. (they could have other attributes, such as speed)
At the very least, a plane has a method, which is "moving"
I am now realizing that the plane should have an attribute assigning origin and another one assigning a destination.

I could initialize the object with the origin as an initialization of the class or with an attribute. Because it is such a simple action, it makes more sense to me to initialize an object with the
origin and the destination.

**ANN**

What is going on here? I've tried almost anything and still get the same pattern of the energy: spikes of high energy that are on the same orders of magnitude, alternated by valleys of low energy. The MDL results in an equation that is not really predictive of anything.

Maybe, by the time I wrote the current code, I made a mistake about processing the data (the input containing the energy, steps, expressions, parameter, and parameter values). Because I have a code that
produced very accurate equations, I can read the same inputs and see if there are any differences.

Step 1: read the data that generated good results in both codes. The "old" files work in this code. There is nothing fundamentally wrong about this code.

There must be something about how the traces are generated.

It is always the simplest things.

It makes sense that things are taking longer now.


## May 31

**ANN**
The idea would be to completely change the new code structure. I think I am almost there. What is left to do?
Done and running.
I should finish the model sampling of the leaky ReLU functions and change those figures that are out of scale.

It is worth asking myself whether it makes sense to save the dataframes that take so long to run. I think I would in the case that I needed to use them several times.
