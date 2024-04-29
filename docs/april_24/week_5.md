---
layout: default
title: Week 5
parent: April 2024
nav_order: 5
---

| Goal | Notes | 
| ----------- | ----------- |
|(W)|Enaire |
|(PH)| |
|(R)|Phosphorus and Omnivore's dilemma |
|(ANN)|Generate 10 ANNs |
|(O)|Fertilizer presentation |


## April 23

**ANN**
So you have all 10 ANNs. You have 30 ANNs generated in batches of 10. Each with a different activation function.
The idea now is to train those ANNs in the functions you generated and see how do they perform.

How do you train them?
You can train them in a given range or you can train them to interpolate

What do you use to train them?
You cannot use the pyrenn library, as we saw. It has important limitations.
R does not have a code to train these ANNs (at least that we know)
And building ANNs from scratch would take you a long time, that you would be better off using for this project.
So let's see if you can find a library to train ANN.

PyTorch is apparently very good for large and dense datasets.

I don't think he has a code to train his own ANN.
In reality, I could use the pyrenn library as well, because it already solves the problem with the function it has incorporated.
But first, I should save the weights of the neural networks so that I can generate more data.

1. Save the weights of neural networks
2. Generate functions from -5,5 and from -10, 10
3. Train ANNs with those functions.
4. Find a library to build, train and test ANNs easily.

Certainly, you can build an ANN from scratch as a side project.

Let us start by looking at how to save weights.
For every ANN, you will have a list of weights. That is a list of lists, actually.
You have as many lists as layers, which makes sense. You have to add the input and output layers. The sizes of these lists are the
sizes of the layers, the size of the input layer +1 and the size of the output layer.
You can just save it as it is. As long as you keep the order.
Alternatively, you could save it as a dictionary.

Error with pickle: I think I cannnot save an array. I suspect I have to save it as a dictionary. It was a problem of the order of arguments.
So now I have to implement two options in the code: initialize weights at random or import new ones.
Or else, I can build a new code. The second options seems a bit redundant to me.
Here is what you can do: you can dump the pickle when you randomly start it. But that creates as many pickles as initialized weights you have.
However, that is not bad in itself, it makes things more modular.
Naturally, the problem is now how you name these pickles. I don't like this approach any more, because I cannot prevent pickles to overwrite each other. I cannot trivially label the pickle without
reducing modularity.

I seem to have the reverse problem now.
Are weights not saving correctly?
the length of the weights is 6.

Here's my idea:
 Go back to initialize weights
 Save them
 Load them
 Something must be different

It is even impossible to compare

I am going to do another test and re-write this part of the code.
I want to do this in an elegant way but probably is not that important.

Pickling eventually worked. There needs to be a more elegant way to switch between pickling and not-pickling modes, but it does not make sense to work on that right now. I did the right thing by
coming up with a solution to the problem.


**R** The Omnivore's dilemma. He starts talking about fertilizers on p.38. This corresponds to p 47 in the pdf.
p 146 corresponds to the pdf p. 155. This is where he starts talking about npk agriculture. A critical view of it,
actually.
Apparently, fertilizers (particularly nigrogen) makes the plants more attractive to insects.


Tomorrow:
Save the weights for all three activation functions.
Save the datasets too. That should give you some information about the right normalization. You should normalize over the longest dataset to be able to compare.
The next step is to train neural networks with the 10x3 functions you generated. Are you going to use pyrenn or are you going to look for something else.

Plan next steps on PH project

Enaire stuff

## April 24

**ANN** I need to train the functions on the Neural Networks. I need trainable NNs. And I am looking for those NNs.
I decided to go for Tensorflow. Than means that I should read some documentation.
But Tensorflow seems to run over keras. Keras appears to make it easy to build neural networks.
I should be able to generate a neural network with keras today.
And if I am not sure whether it works well or not, I could compare it with pyrenn.
The Neural Networks that I will build will have the same parameters as the NN that built the functions.
ILS=2
NL=5
LS=10

The page I am reading now might give me some ideas on how to proceed next.
Each layer has to have one input tensor and one output tensor. I don't think that means necessarily one node, but I am not sure.
Maybe the "ops" parameter does this.

Let's get back to this.

You build a model with five layers. You would expect your weight matrix to have 10 rows, 4 columns.
How many inputs has this nn? Let us assume the output layer size to be 1, and the input layer to be tunable
I am not sure this is what I think it is.

Something's throwing errors back at me. I need to know what is going here. There is something with the syntax.

## April 25

**ANN**
What is the most reasonable thing to do now? Try to build that neural network again?
Or train the functions with pyrenn? Maybe I could try once again. And think about the errors that I am getting.

First, you get a warning more than an error. And then the code complains about a lack of memory. Apparently, this is not a problem of the code, but a problem of the gpu (hardware). This suggests two possible solutions:
1. Ask someone else for help
2. Use something simpler (scikit or pyrenn)

I am going to try pyrenn to find a fast solution first. How am I going to train the networks?
I see three possibilities?
1. Remove a part of the function and train with the rest
2. Remove intermediate points of the function and train with the rest
3. Train with the whole function and see how it performs out of sample. For this, you will need to handle normalizations.

You need the functions rather than the weights.

So one dataset is one input.

## April 26

So you are taking a train set with the x and y data.
Then you train the network.

Then you take the test set, which is the y points you had not seen before.
ytest is the result of training the dataset.

Somehow it is not understanding anything. Maybe I should give it more time to train or more data to train.
I don't understand what is going on

What am I trying to do?
I have the original function, and the function predicted by the NN.

I should plot original vs predicted.

But I want to plot trained and test in different colors.
My limitation right now is a technical one.

I think this is mostly done. I just need to plot the figures together.

What do you want to plot altogether? Generating 10 panels does not seem like the best strategy to plot figures.

Ok, so we'll plot a big panel of 10 columns, 3 rows. Rows are: function, model function and trained vs. predicted.
I have to save the information somewhere,though.

Monday: plot errors in panels from datasets: function, model, predicted vs real. Add diagonal and colors. Add error as text.
Make sure everything makes sense and repeat for the corresponding datasets.