---
layout: default
title: Week 5
parent: August 2024
nav_order: 1
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)| |
|(PH)| |
|(R)| |
|(Code)| |
|(O)|Get up to date with ANNs, tipping point paper, and airport paper|

## August 26

**ANNs** Right now, I have a vague memory of what I was doing. I am pretty sure I was working on a code to somehow train the ANNs without overfitting them. Which is what was happening before, probably. Let's take a look at the code.
So obviously I cut the dataset into train, validation, and test. And then I also did 2 iterations (the minimum allowed by the library) of training the NN. I test the NN on the train and the validation set (the test set will be hidden).
Then I compute errors on the validation and training sets. The validation works as the training set, in this case. Thenk I store that NN in a dictionary (?). I had to deep copy that nn, I remember that.
Then I take the minimum errors (mean squared and root mean squared), find the indices, and save the NN.
I think I did several experiments on retrieving NNs that I had saved and they eventually worked (or showed that the system worked). Now, I should move on with the initial goal: ensure there is no overfitting. How did I do that? I think the error on the validation set had to start increasing at some point. I should take a look at the results again.
Everything makes sense and the only thing left is to fix the code and generate the results. I've run the whole thing and everything still makes sense. What should we do now?
