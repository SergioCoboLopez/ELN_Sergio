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



