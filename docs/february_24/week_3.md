---
layout: default
title: Week 3
parent: February 2024
nav_order: 3
---


| Goal | Notes |
| ----------- | ----------- |
|(W)|BP - Innovation, goals|
|(PH)| |
|(R)|Tipping elements paper |
|(Code)|ANN. Produce 1d result, Start Implementing Relative error and log-ratio |
|(O)|Finish BP paperwork |


## February 20


## February 21

**code** ANN and machine scientist

How many traces do I need? Would it be enough with repeating a round of traces twice?
It looks like I have 20 datasets.
You have 20 repetitions of the same run. You have 20 datasets. Run over the 20 datasets twice and start doing stuff.

Ok, I have the processes running and wrote a script to sequentially run processes. Is there a way to run them in parallel? Probably yes. But I do not know if I want to invest my time and effort on that right now

**code** Relative error and logratio
I don't think I have such a thing as an upper bound of the error.
However, theoretically, the error would be bounded by the inactive processes.
Theoretically, again, you could take the absolute error (difference between full and simplified model) and integrate. That should give you the error as a function of time. However, this has been proven before. But theoretically, that would be the upper bound of the error. 


**W** BP

## February 22

**code** I had the following question: if I am not visualizing a python process in my terminal, how do I know whether that process is running or not?
A good solution to do this is the command "ps aux | grep python". This is how the command works:

ps - process status. It gives information on processes running in on a system.
aux - a: all users, u: detailed information, and x: includes processes not attached to a terminal.

| - sends the output of a command as input to another command
grep - searches plane-text data

In this case you are filtering all processes of all usuers not attached to a terminal with detailed information so that you only see python like processes.


**R** Physics of climate change
Arrhenius was awarded the nobel prize in 1903, because he discovered that when salts dissolve in water they dissociate into ions (this reminds me of Gaia and the salts). Arrhenius also discovered the activation energy of chemical reactions.

**W**


**others** thoughts. I would really like to learn linux in a deeper way. But I think I should orient my learning to specific tasks that would be useful for me. What would be a smart way to use linux for me?
