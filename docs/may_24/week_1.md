---
layout: default
title: Week 1
parent: May 2024
nav_order: 1
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)| |
|(PH)| |
|(R)| |
|(Code)| |
|(O)| |



## May 6

**ANN** I have the functions to start with. There is no reason (in principle) to open the code again.
I have 10 tanh functions and 10 leaky ReLU functions. What would be the next step?

The next step is do things with the same architechture. That is difficult, because you had 2 layers in the first example.
And your training code does not like having two layers as an input.

R probably had two input layers, because he had two variables? In that case, I would need to change the architecture again.


To have a template figure of a gridspec:
First define the full size of the figure. Then define the limits.
The limits are given as fractions:

## May 7

**thoughts**
coding is a craft. Not coding in a literal sense, but in the context of an academic (at least) project.
When is your code good enough? When do you know it is time to split your code in modular codes? When is it time to start thinking in another level of structure?
In other words, when should you be thinking of "meta-coding"? And how much of "meta-coding"? Too little meta-coding and you will be generating a lot of entropy every day.
Too much, and you will not get enough done.

Right now, I have the following situation: I have one code to generate functions from a nn, another code to train that nn and generate a model (and now save the nn data), and another code to plot the data.
I could move on and start getting things done. But I feel I am trapped in a step where it is worth stopping: save the neural networks so that I can keep my data there. If I run the code to train my data, I will step over the previous neural network configuration.
I think I do not have the same architecture.

## May 8

**ANN** I should test my hypothesis about the weights of the NN.
So if I had a single ILS and 10 nodes in my first layer, I would expect 10 weights.

How the weights are generated does not look so important now that we know there is a bias layer.
How are the weights "activated"?
You would expect an initial operation on the first node (or pair of nodes)
Nothing suggests there is something going on with the first node specifically.

I don't see anything of this happening. Maybe I should try a very small example?

Say that I keep the
ILS=1
Then I do LS=2, and NL=2
I think I would be able to better interpret the data in that case.
Right now I have ILS=1, LS=10, NL=5

And I am going to go from -4,4 in intervals of 1.
Instead of intervals of 0.05


Everything makes sense now, and we can return to the initial configuration. Everything's good again.
Next question: Does pyrenn have a bias included? Yes, it does by default.

Our next problem now is how to save data and which data to save.
Once I have the NN, I very much have the weights.

## May 9

**ANN**
Now I need to get the distributions of weights from the files and plot them. I need to change the code for plotting the figures.

The BMS is running now and this will be a bunch of tests at the beginning. (there are good reasons to believe the first iteration is not going to work).
So we need to do something else.
We will be plotting whatever function comes from the BMS first. And looking at whether it makes sense or not.

## May 10

**ANN**

The BMS performs great on the train set, but goes out of control in the train set. What is going on here? This does not seem as the expected result.

Nothing really wrong: it is expectable to have weird results from the minimum description length equation found by the BMS.

Here is what we should do:
 -It is important to look at how your description length looks. If there are no fluctuations, that means that you probably are visiting the same model multiple times. That is not good. If that happens you should be launching the trace differently. Instead of 50000 steps only once, do 10 times 10000.
 -Grab 100 models every 100 models in the trace.
 -Take the median of those models and plot it
 -Out of those 100 models, take the one who resembles the median the most.
 