---
layout: default
title: Week 3
parent: May 2024
nav_order: 3
---

| Goal | Notes |                   
| ----------- | ----------- |
|(W)| |
|(PH)|More figures |
|(R)|Code and thinking slow |
|(ANN)|Sample the trace |
|(O)| |

## May 20

**ANN**
The code I first did took the model in the trace with the minimum description length. That gave a very good prediction in the "train" set but awful on the test set.

To solve that, one idea would be to go pick models every 50 or 100 iterations. That should give you 100 models in total.

Then you take the median of 100 models. I think you take the median of 100 curves. I think you do the median of all points and then decide which curve hits more times the median.

And then you compare the mean squared error of the median with each model. Whichever model is closest to the median will be your model.

I think you would need a specific code for this. Steps:

1. Read the trace

2. Take a model every 50 steps

3. Now I should import the ANN and plot a couple of functions. So far it works, but I cannot plot stuff. I need to think what to do.

I am pretty suspicious about the traces, although I only have seen the functions for the mdl. It looks very off (constant functions, or functions that do not predict the train set at all)

My strategy right now is:
1. Rerun the traces for the leaky_ReLU function (there is a good change it was wrong).
2. Take a look at a couple functions tomorrow
3. If things still look odd, plot the MDL over steps.
4. If the mdl is not informative, try the same datasets on the "old" code.
5. Save figures of the mdl and run the cluster with old prior.
6. Keep building code for equation sampling.

## May 21

**ANN**
The goal would be to predict all trajectories for the model and compute the median of those predictions.
I would start with say 10 predictions.
Plot them.
And plot the median.
I think you might need a specific dataframe for that.

Something seems off with the MDL of the new processes I ran.