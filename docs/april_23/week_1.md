---
layout: default
title: Week 1
parent: April 2023
nav_order: 1
---

##April 4

**PH** I want to actually decouple the metabolic model (in its many instances) into three modules that
can effectively operate separately or with minimum overlap.
I thought I could do this by copying the contents of one container into a single model and seeing where and
how the model fails.

I did this with the phage bacterial dynamics. The model automatically fails because it cannot find the values 
of the parameters.

First step: copy paste values of the parameters.

The edar function is ill-defined because it yields negative values for very small values of eDAR.
Small values of eDAR are not something we can constraint. 
I don't think it is ill-defined now. I think it should be better constrained, but I defined it in a way
that is consistent with my requirements for it.

I am starting to get a feel of how to make the models, at least, more independent. My initial feel is that:
container should not call anyone. They should be called instead. 

Tomorrow: keep doing this, work on corrections on the paper, and start again fixing code (put everything into functions)

Keep doing this, means to fix the container with the parameters:
1. Separate stochastic from non-stochastic parameters and clearly define them.
2. Think if there is another way to arrange elements (probability of lysogeny)
3. Make a container for eDAR that you can import right away (it could be a function that you define or 
the metabolic model?)

##April 4

**PH** - Repair GoldSim models
How am I going to fix the container of the parameter values. I want to have a stochastic model and a non
stochastic model together. I should be able to easily change from one to the other. This looks good.

How to import now the metabolic part of the model? How to separate it from the rest of the world? How to make it flexible enough to allow for interventions/experiments?

How to do a metabolic machine that works independently of the rest of the world? I think that would be very important. I keep changing things in my models and making corrections and that makes my models automatically outdated.
I should have at least three independent modules and work on them separately.
One model for phage-bacterial dynamics
Another model for eDAR purposes
A final model for metabolism

These three modules should operate as independently as possible. If I put them together, goldsim should not complain about it. Or should complain minimally. 

Next goal: Build a metabolic module that is as independent of the rest of the world as possible.

**H** - Fix code and put functions in libraries.

If I moved the function 'Concatenated_simplified_dynamics' I would have to move everything that this function calls. Next step: list all the functions that depend on 'Concatenated_simplified_dynamics' and bring to the library the most nested one.

Dependent functions on 'Concatenated_simplified_dynamics':

1. Solve_Simplified_Model
2. Monitor_Dynamics


First function moved to library

Second and third functions moved. Something looks weird, though. I figured out what the problem is.

Only equations left to update.

Tomorrow: keep building modular versions of GoldSim model.
Edit paper with Breeann and Heather.

## April 5

**M** - Meeting with Jenna and Forest

VMR Arms Over time: the smaller the VMR the smaller the hole. Smaller holes are less O2 or more DOC via algae.
More O2, more VMR
Why is VMR=10 is important? Because thi is the average you would see in marine systems.

1. Take the data of the aquarium and the arks
2. Find the inflection points of the curve.
3. Take the linear phase. How to get the linear phase?
     a. By eye
     b. Machine scientist and second derivative
     c. A method that finds the linear phase of any curve
     

Forest claims the linear phase is the Goldilocks line.

Think as VMR regulating eDAR and not otherwise. This is because we do not know how to measure DOC.

**H** - Fixing code
I am trying to put all functions in the library. This does not work, because the function Solve_Simplified_Model does not know what the parameters are.
I need to tell the function about the parameters. What would be the best way to do this? What is the most practical way to do it? My first thought would be to make the parameters just another argument of either Solve_Simplified_Model, 'Concatenated_simplified_dynamics' or both. However, is this the best way to do things? What should this code do? Or how modular do I want it to be?

The inputs of my method should be the values of the parameters, initial concentrations, and experimental time. Nothing else.
Being that the case, I would make a dictionary named parameters. Every key is the 'name' of the parameter, every value is its corresponding value. This dictionary is an argument of the function 'Concatenated_simplified_dynamics'. It is also a function of the Solve_Simplified_Model function. I think this should work.

**W** - Subaquatic sampling paper.

I will start accepting all changes proposed by them.
I don't know where to start. But what about starting with the abstract?
The question would be: given a sample that has a larger concentration of VLPs than the environment, what is the volume that we would need to sample to get the same concentration?
I think the problem is:
-I know my environment of I has a concentration C that is higher than that of the environment E.
-However, I cannot sample I without diluting it with E.
-So, how much volume should I extract to my sample from the environment of interest to have the same concentration. Or, given the volume and density of the sample, and given the volume of I, can I get the concentration of I?

I've realized that all my plan collapsed quite fast because I needed to think about what my paper was about. I don't think that's bad, it is something I have to deal with. At the same time, I notice that I really do not want to be doing this, but that's because it is hard and requires me thinking. And I do not want to do that.

So, now I know that my paper shows a method to calculate the density of interest given:
the volume and density of the sample
the volume of interest
the sampling rate
the sampling time
The density in the environment.

Ok, I have started editing this document. I should give this 30 minutes tomorrow (at least)
Then, I am going to put an hour into making GoldSim more modular.
And then I am going to work on the code (moving what I have to the library and prepare for the next model)
I should also think about Jenna's model: for instance extract linear part of the model by hand. Also find tools to extract the linear part of the model from the figure.
Also, take a look at the class.