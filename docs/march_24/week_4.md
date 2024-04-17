---
layout: default
title: Week 4
parent: March 2024
nav_order: 4
---

| Goal | Notes |                           
| ----------- | ----------- |
|(W)|Enaire |
|(PH)|Error vs critical value; improve code |
|(R)| |
|ANN|Check processes |
|(O)|Deepwork |


## March 25

**O** On deep work
I find deep work very difficult and I even have doubts it really works for me. Or it is objectively the best way to approach work. At the same time, the ideas make sense to me.
One thing that has been working really well for me is to start my day and my work time reading.

**PH** Error vs critical value
I will generate a csv of scenario growth with the critical values noted in my goals list.

Could I build a header with all the functions or libraries that I want to import on python?
The mean values are the trickiest. Should I remove them from the output?

Filter dataframe by type of error and plot things. Produce initial figure to start working on. Put consistent deadline.

**ANN** The script I wanted to write is more difficult than I expected. I wanted a bash script that writes a message if it is stuck at a python script for more than x hours. But if this script is trapped running a python script, I don't think it will send that message to the log. No until it finishes running the script, wich is what it does not.
To solutions come to mind:
1. Have a second script that checks the running scripts and tells me whether something has happened or not every x hours.
2. Put a timeout option on the python code itself. Or put a print that goes into the file that calls the bash script. "stat" can help me.

## March 26

**ANN** Clearly, processes stop the moment I close the window. There needs to be an alternative to this. For now, I am going to stop the process.
I should remove runid 12 and 10. If they are not removed yet.

I really don't understand what is going on here. My current experiment is working rather well.

Ok, this works. Let's see if the next experiment will work well.

Now it is not looking great: I closed the window and the ps command does not tell me that the process is running. This would make my life quite miserable.
However, the file is changing. So the process is active but is not showing up on the ps command.
I need "something" to alert me if the same process is not moving in a long time. But I can use stat on the csv file, for instance.

**PH** error figure vs thresholds

Simplifying things I would just show the logratio error.
The panels are the scenarios (as usual).
You show max and end errors.
But I think mean errors are fair too. You can put them in a separate panel, if you want. And show the std.
You will need to code a little bit that too, but that should not be a big issue tomorrow.
Check the mean, std, and plotting of those results.

## March 27

**thoughts** I am running on autopilot again. And that is no good.
I need to find the specific differences and similarities between what Gurtner is doing and what we want to do.
So the problem they are trying to solve is strategic allocations of trajectories. I guess what is the best way to manage trajectories of different air traveling companies.
In a way they tackle the same problem, because a flight is rejected if the sector reaches its maximum capacity. But it is not exactly the same: the controllers cannot solve congestion problems real time.
Do I want to go this way? I cannot be very explicit in that case, because my space is limited.
What can you say about this paper

**ANN**
Dataid 0, run 15 seems to be stuck at 1869. I am going to give it around 45 minutes.
Dataid 0, run 16 looks suspicious.
Both 15 and 16 are running and the csv files are changing.

Dataid 1
runid 15 missing
runid 16 missing
Running 15 and 16 right now.

runid 1 suspicious
runid 19 suspicious

Dataid 2

9 to 19 missing. Running 8 to 12 right now.

It is getting difficult to track the processes right now. The nohup.out output is not helping me.
And the text files are not updating well either.
It would seem that when I use the "ps" command, processes with an R letter, are running.

**phages**
I was not representing the std adequately. It was not expressed as a percentage. I was confused about it at first, but there is nothing I should do besides multiplying by 100. I don't see anything substantially different about it. The percentage is just another representation.
So at this moment I have everything I need to produce a panel with the log ratio of the max error, the end error, and the mean error with the std.

There are a few things that I would like to test first.
The first one is whether the critical threshold is what it needs to be.
And whether it has units. How do I test this?

It is relatively easy to understand the critical thresholds: it is just the weight that the processes need to have to be active. You can derive critical concentrations from there. Do they have units? They don't. Perhaps you could argue they have dumb units (cells or phages). But only the dynamic terms including bacteria or phage.

All I would need to do now is to build two panels
One panel has the logratio end and max errors in four scenarios
The other panel has the mean and std with the same four scenarios. I build that and send it.

**R** Phosporus
There are three types of lakes

1. Oligotrophic: not so many nutrients, not so much life, and clear waters. Tahoe is an example of that.
2. Eutrophic: The opposite. Warm and murky (turbid)
3. Mesotrophic.

Deep work
Neurological arguments for depth and happiness. You focus on stuff that makes you happy and that makes you happy on the long run.

## March 28

**ANN** Seems that dataid=0 is ready. What about dataid=1 and =2.
Dataid =1 seems mostly ready. Dataid=2 is still running. The current process should stop at runid 12.
I can run two sets from 13 to 16 and 17 to 19.
Process from 13 to 16. Running.

Process from 17 to 19. Running

**PH** There might be an error in the panels. I will need to check it.
My hypothesis is that hypothethical error is due to the "percentaged" std.
To test this hypothesis, I need to go back to the percapfinit code. Then, I should calculate the percentage error at the very beginning (before saving it to a dataframe). Then, I do the standard deviation over the "percentaged" errors.
Then I save that information in a dataframe and repeat the results in the figures I produced today.
This should be among my first tasks next week.

## March 29

**ANN**
The batch of processes 13 to 16 froze and I restarted it. I need a more intuitive system to monitor cancel and restart processes. Initially, I thought the nohup command would be helpful. And to a certain extent, it was. Otherwise, processes were interrupted any time I closed the window. But this system does not allow me to see where a process is stuck.
One thing I could do is to:
1. cat all txt log files that I produced to see in which runid each one is.
2. Check the state of each corresponding file with the stat command.

**PH**
Started doing things differently with percentages.