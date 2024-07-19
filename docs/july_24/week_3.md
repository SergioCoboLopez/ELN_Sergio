---
layout: default
title: Week 3
parent: July 2024
nav_order: 2
---

| Goal | Notes |                                                                                
| ----------- | ----------- |
|(W)|  |
|(PH)| |
|(R)|  |
|(ANN)| |
|(O)| Think about skyflowsym |

## July 17

**O** SkyFlowSym

I designed the code to face a problem it would never face. The problem that we are facing now is more delicate, because it is a sort of asynchronous problem: what to do if a plane is going to a zone where other planes are going.
There are two ways to face that problem: with time or without time. And this is the conceptual part, not the technical one.
Without time, I could just assign priorities to planes. Some trips are more important than others. Or some planes are more important than others. If three planes one to fly to the same zone, the one with the lowest priority gets rejected.
Then we can define time (inside time). A sort of half-step. This means that a plane spends, at least, two units of time in an air-zone. But this defeats the purpose. If a plane is faster than the other two, there is no conflict. The solution with a half-step is not really a solution. I could always zoom-in in time and would get the same structure. I think assigning priorities is a better solution for now. But I still need to solve the problem.

We go back to the time problem. If we reject a movement, time has gone by. We need to try and reject before actually moving.

## July 19

**ANN**  The results I got yesterday make little sense. But I did not see any obvious errors. I have the suspicion that everything's good. As a sanity check, I could repeat the results with lower noise. If the noise is lower, the results should resemble more the original results without noise.
I made quick corrections to the code to make sure files do not step over each other. I should remember going backwards.
Ok, this is running and the file saves correctly. I am going to submit a second trace.

So what should I do now? I think I should put the correct errors. In the meantime I could think what could have gone wrong.
I did a final third run on tanh id=2. It seems that the code does read what I ask it to read (that part of the dataset)

One of the run's ready.
I started all the runs again, because the pipe broke.

I think the results start making sense again.
But the error does not make total sense to me.

I have missing runs from the Leaky relu. But it is not fatal. I can run them now really. I could also try the nohup run.