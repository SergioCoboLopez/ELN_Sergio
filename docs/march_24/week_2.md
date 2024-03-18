---
layout: default
title: Week 1
parent: March 2024
nav_order: 1
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)| |
|(PH)|Log-ratio |
|(R)|AMOC Paper |
|ANN|Rerun the codes after having enough data from a DATAid |
|(O)| |

## March 11

**ANN**

So we are at about 2 or 3 processes per day, which is not a lot. This process will finish in 4 to 5 days, I think. We need to be doing other stuff in the meantime.

I want to test how a single file performs against the ensemble of 5 or 6 BMS runs.
Ok, so things are different, yes. However, why does the MDL increase?
Also, there is a chance data have been stepped over. I should erase everything after 49999 runs. That would make it.
Run 2 does not step over. However, it's shorter. Why? I think, the MDL does not change after a few iterations.

Ok, so this works. Still weird how the MDL increases sometimes. But ok.

I would now test this PySr thing for a short while. If it does not work, I would try the noise thing.

So probably the next thing to do is to study the noise.

I don't understand how this is structured and I am afraid of messing things up.
So the noisy data is located in Data and not MSTraces. That makes sense, because we are adding noise to the original data. In fact, the script for adding noise is in the data folder. We would like to use the traces to recover the original data?

Would you take the noisy data and try to reproduce it with the original traces?

Or would you take the noisy data and produce the traces for that noisy data?

This is what I have in mind:

     1. Take the original ANN generated data
     2. Add noise
     3. Apply the BMS to the noisy data
     4. Compare the "noisy" BMS equations against the original BMS equations. Are they similar?
     5. Apply the BMS "noisy" equations to the original data
     6. Alternatively, I would try to explain the noisy data with the original BMS equations

State of the problem:

1. BMS traces take more time to run than I had expected
2. I confused dataid with runid
3. PySR does not work, I think (check running notebook)
4. What to do about the noise? Ideas:
   1. Generate traces for the noisy data. Compare noisy traces against original traces. Are they similar? If so, the BMS uncovers the original equations. Also, it can tell noise from signal. Do noisy traces explain original data?
   2. Try to explain noisy data with original traces.
   
**R** AMOC

What is F$$_{ovS}$$ It appears to be an important indicator of AMOC's stability.
The meridional freshwater transport is decomposed in two different components, one of which is the overturning component F$$_{ov}$$ I think $$S$$ refers to freshwater transport.

## March 12


**R** AMOC
I will make the point that we don't know what we are messing with with climate change.
Then, we get to the tipping part: "freshwater transport of the AMOC at 34°S, indicated by FovS". I was not expecting this: the current strength at a very specific location is the tipping part of the system?

**PH** The first thing I am going to do is to read the email in detail and look at the last figure I had sent. He says that it is very interesting that the maximum error does not occur at the end of the simulation. However, that is purely incidental for me. We were just lucky that did not happen. Although it is true that the method can recover precision.

I suspect doing the figure with error vs critical threshold is going to be complicated, because my code is really not done for that. I suspect I could run the code for different values of the critical thresholds: 0.1, 0.5, and 2, to start taking a look at how things behave. That could be an initial figure for me.

Most likely I will have a conflict with the repo. I prefer my remote changes to step over the local ones right now.

Ok, we fixed it. In general, you don't want to forget commiting and pushing, but you will. So you need to remember how to do things. You can use 'git restore' to discard unstaged changes. Unstaged changes are those you have not commited. Then you can remove new files (and restore the changes). You lose everything you had done, but it is the only way to not have conflicts with the remote changes.

The log ratio is calculated as the absolute value of the log of the predicted (simplified model) value divided by the observed (full model) value. Ok, this seems to be working.

I am going to try an experimental plot of the log-ratio. I don't think it looks much better (if not worse)


relative: over-predicting flows is penalized by the relative error, under-predicting flows is not,
log-ratio:Importantly this metric penalizes both over- and under-predictions equally
So when both mechanisms are active, there is a short time in which phages are over predicting and bacteria are under predicting. The log ratio should be higher than the relative error for that particular instance. The opposite happens at the very end.

no-growth-no-decay: from ~100 to ~1100 hours I would expect a logratio of bacteria higher than the corresponding relative error. This trend intensifies in the final phase of the figure. This is not noticiable in the first case, but in the second one.

There is a problem with your time-vector. Sometimes you need the original time vector, sometimes you need the "simplified model" time vector. The causes as to whether that happens are not completely clear, but the amount of time we would need to devote to a minor problem is too much. It is less than ten points (worse case scenario) and those points will not make a big difference. We believe this error is partially due to the fact that the simplified model time vector has more points than the original one. The reason for that is how we concatenate successive dynamic regimes (the first point of dynamic regime is actually the last point of the previous dynamic regime, we need some initial conditions, after all). In any case, we fixed that problem with a try/except instance.

The next things should be to have a log-scale and set consistent max and min values. Let's say the maximum is 1.5 for now.
I will need to find an explanation for these huge drops in the error when I plot them in logscale.

This is telling you, that if you predict less bacteria or phage than there actually are, the relative error is not going to penalize that underprediction. The log-ratio would have worked great if you tended to over-predict. Is there any practical reason for which you would not penalize underprediction? I don't think so.

I'm working on the percentage thing now: what is the best way to transform errors and ratios to percentages in a way that it is easy to fix and change? Because I know we'll have to change it, of course.
I should fix now the y axis. I fixed this with a couple of if statements.


**O** Is there anything useful I can do with my google fit data?
-I was thinking about a distribution of steps by number. What type of distribution is it?
-A distribution of steps by day of the week.


## March 13

**ANN**
How many expressions can explain the same ANN in an interval between -4,4? Rashomon set. You don't even need noise.
You define a range in which you look at the ANN and the BMS expressions.
Then you set an error $$\epsilon$$
And then look at pairs of expressions outside that rank.
If two expressions predict different values by more than $$\epsilon$$, they are different.
Another question you can ask is how many of those expressions correctly explain the ANN data. That reduces the subset of expressions you look at.

So, what do you do in the meantime? I think you wait. And think. The processes are not moving any further. I will launch a second batch on Friday.

**R** AMOC

I am trapped in this salt-advection feedback. It looks like it is a positive feedback loop that keeps the AMOC running.
I believe differences in salinity keep the AMOC moving. Where does the freshwater come from?
This is the bit of information I need to understand the tipping behavior.
Advection: transport of a substance (salt?) by a moving fluid.
So the ocean is carrying salt and that advection further promotes the current, I guess.

"This feedback describes the amplification of a freshwater perturbation in the North Atlantic through a weakening of the AMOC" Because you have more freshwater than usual in the north atlantic (Greenland) this weakens AMOC.
Then, you have less advection of salt to the north atlantic, which further increases the freshwater forcing.

This multi-reanalysis mean negative trend suggests that the AMOC is on course to tipping as a more negative FovS is associated with a stronger salt-advection feedback.

The negative FovS is associated with that salt-advection feedback.


**O** What possible interpretation has the exponential of a quadratic bacterial term? I know quadratic bacterial terms are interactions. But, exponentials?
The exponential function arises whenever a quantity grows or decays at a rate proportional to its current value. Bacteria grow in time in proportion to how many bacteria there are. I don't understand. Could the derivative be related to this?

## March 14

**thoughts** Am I overthinking it? Let's see: salty (and warm) water from the Caribbean gets transported to the North Atlantic, where it sinks, because it gets denser because it's saltier. This warm salty water sinks to the deep ocean and emerges in the southern hemisphere. Now, if warm water were fresher, it would not sink, because it would not have enough salt to do that. How does the salinity drive the rest of the process?
I'm sick. And there is no reason to think I will feel better tomorrow. So I am going to try to put the figures together to have them ready to send tomorrow.

Maybe the water rises because it loses salinity? Or because it rises in a region that is saltier than the water there.




