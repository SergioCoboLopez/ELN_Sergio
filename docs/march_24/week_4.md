---
layout: default
title: Week 1
parent: March 2024
nav_order: 1
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