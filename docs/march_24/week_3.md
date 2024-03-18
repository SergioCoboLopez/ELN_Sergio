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

**thoughts**
I do not understand what is going on with the processes and why are they so slow. So in one week there is only one process that has finished. Is there anything wrong with them? It could be, but I don't have strong reasons to think so.
Is there anything I can do in the meantime?
I could use other computer to launch the final processes of dataid 0, for instance. At the same time, I could try to do something about my script so that it notifies me of finished processes. That sounds good.

Nothing has changed in about an hour since I looked at the iteration at which the BMS is running. Is it stuck? Likely. Why is it stuck?

allostasis: the process of maintaining homeostasis through the adaptive change of the organism's internal environment to meet perceived and anticipated demands. Biologically, stress means that you have to adapt (allostasis) to an stimulus. Stress has been questioned in terms of its meaning/definition.

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