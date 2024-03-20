---
layout: default
title: Week 1
parent: March 2024
nav_order: 1
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)| |
|(PH)|Send figures of the error |
|(R)|Phosporus |
|ANN| |
|(O)|What is going on with these processes? |


## March 18

**PH** I did not like the idea of having the error on a log-scale.
I am going to try something different.

yscales:
growth: 40%
decay: 4% (out of scale)
growth-decay: ~134 %
no-growth-no-decay: 40%

Ok, so this is reasonable. I am going to try different scales.

I am going to change the names of the scenarios. 50% does not do the trick either. So we need to taylor a specific scale for the decay scenario.

I made a cleanse of all the figures in the repo. I do not need png, eps, or pdf files for that matter. So I will stop doing that and will change the name of the folder.

I think I do need to explain the weird evolution of errors. I need to explain two things: why is there a difference between the different equations at the end/beginning of successive regimes.
Why the error does weird things.

My hypothesis on Fr was that there are "feedback" errors: predation and burst are connected to each other, and so there are some feedbacks between them that should affect the error. That is the only explanation I could find.

I am going to try the full model, because the four mechanisms are included there.

Things are not saving properly.

**R**
Homeostasis The human body regulates its internal physiology to keep us alive. The body releases hormones to maintain homeostasis.
The process of releasing hormones and introducing changes to immune and metabolic parameters is called allostasis.
Allostatic overload. That could be the first link between stress and health.
Two system active when we are stressed:
1. sympathetic–adrenal–medullary (SAM)
2. hypothalamic–pituitary–adrenal (HPA) 

Release noradrenaline to activate internal organs.

fight or flight mode is the result of release of adrenaline and noradrenaline.
Increase in heart frequency and shut down of some metabolic functions

One of the central functions of cortisol is to increase access to energy stores, increase protein and fat mobilization, and decrease inflammation.

individuals who exhibit the largest increases in BP or heart rate (HR) in response to acute stressors will be at greatest risk of future ill-health.

**ANN** It seems it does get stuck. O suggests putting a time limit after which, you re-start or shut down the process.

March 19

**R** Humboldt discovered guano is a great fertilizer

**ANN** Processes should go much faster than they did when they got stuck. It would be good to have a way of stopping a stuck or long process after a certain number of hours.

**thoughts**
How should the next figure look like? On the x axis, I will have the critical threshold. On the y axis, I will have the error.
The error can be relative or log-ratio. It can be the final value of the error, or the maximum, or even the mean.
In a single figure, I can include the errors for the four scenarios together.

The problem now is: how do I write the code for this? Is it worth writing a code at all?
Clearly, I would need a code that wraps the entire code in a loop. This is a bit complicated right now. But it may be necessary on the long run

However, I can export data to a file and write a code that generates the figures from there.

## March 20

**R** Phosporus
Fritz Haber learns how to fix nitrogen in 1909. However, you may have as much nitrogen as you want, you still need phosphorus.

**ANN** Interrupt the first process if it does not move any further in the next hour. Take a look at the third process.
I made a script to prompt the results of the code to a file.

**PH** How does this figure look like?
On the x axis it has the critical threshold
On the y axis, it has the error (relative or logratio)

There are phage errors, bacterial errors and mean errors.
There are max errors, final errors and mean errors
You want to save all results for every run in a csv (and prepare to have to save more stuff):

| wc | Scenario | Bacteria error | Category | Phage error | Category |                                                                               
| -- | -------- | -------------- | -------- | ----------- | -------- |
|    | |

Maybe you don't need the full error because you can extract it later.

I am in a point where I need to choose how will I store my information in a way that it is easy exported as a csv. I should be careful.
Right now, I am on track to make a dictionary of dictionaries:
keys are errors+agents which is already ill-defined.
I think it should be bacteria:{type of error: [statistics]}

Maybe it should be:

| wc | Scenario | Bacteria rel error | Category | Bacteria log error | Category | Phage rel error | Category | ... |                                                                               
| -- | -------- | ------------------ | -------- | ------------------ | -------- | --------------- | -------- | --- |

This seems reasonable. I might think it's wrong, but seems reasonable right now.
Problems arise. I cannot name the variables.

This starts looking good.

There is going to be a problem about the error, which is growth-on, decay-on. It takes relatively little to have all mechanisms active at one point. You will need to deal with that in some way. But let's worry about it later. This seems to be working well.
Now it is time to start generating some preliminary datasets.

I would try 0.1, 0.5, 1, 1.5, 2. This would be just a tentative dataset to see how the data looks, nothing more elaborate. 
