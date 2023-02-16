---
layout: default
title: Week 2
parent: February 2023
nav_order: 2
---


| Goal | Notes |  
| ----------- | ----------- |
|(PH)| Find conditions of quasiequilibrium, hypothesis for O2 vs phages, and review for ESA| 
|(MS)| How to do salinity and find an equation |        
|VP| Correct text and read about daisymodel?|
|Hyperion (H)| Review figures and text (how?) |
|Reading (R)| Reading the rocks, and Transient dynamics|
|Others (O)| Meeting endolysins, find datasets for O2 vs Temperature, and look at the literature |



## February 13

**CP** I have some questions for today's class that I want to revise, answer and send to F. I also made a short script for today's class. In the script I go through chapters XI, XII, XIII, and XIV.
In my opinion, Darwin is mostly making predictions of his theory. In Chapter XI he tries to predict the appearence of new species and the extinction of old species. He does so using the three main pillars of his theory (species appear, they take the place of old species). Darwin does not understand very well how extinction occurs, but his theory predicts it, and that's what it's important.
He appeals to the imperfection of the fossil record to explain why we don't see intermediate varieties between current and already extinct species.
He then talks about something called parallel succession: basically, where you find similar geological formations, you find similar fossil records.
That allows Darwin to introduce his next prediction of the theory: geographical distribution of species. And also how geology and migration influence it.
First, he notes that climate is not the driver of geographical distribution. Every climate region in the USA has an analog in Europe. Yet faunas are different. This happens to a larger extent in the southern hemisphere: South America, Africa, and Australia have similar climates, but different faunas. Therefore, it has to be physical barriers to migration that make the difference. Oceanic islands, for instance. Why are oceanic islands important for the theory of natural selection? Well, they are important in the personal experience of Darwin. He discovers the theory while in the Galapagos islands: he realizes that the local varieties of finches are endemic and perfectly adapted to their habitat. On the other hand, if migration is not possible, remote islands are a perfect benchmark for the theory: natural selection should have perfectly adapted species to their environments.
The Wallace line is also important. It is a biogeographical boundary where four tectonic plaques meet and differentiates the Asian and Australian faunas.
So essentially if migration is impossible, you will see species perfectly adapted to their environments. If migration is possible, you won't.

## February 14

**M** Classes with Forest.

What is the hardest part of teaching? Preparing classes and impostor syndrom. It takes more than I had expected.

Best part? I learn a lot and it's very rewarding.

1. Socratic method: make questions to the students
2. Feedback from the students: talk to them to improve the class (next week). (Be positive) Questions:
   -What were your expectations for this class?
   -Are those expectations being met so far?
   -What do you like about the class?
   -And what would you fix?
   -What would you like to see in these introductions?

If they complain about canvas, we don't do it this way
Grades:
Give them back their homework plus a note with their grade out of the total possible.
Be critical and make sure you keep control of the class.

Email William again with the dates of the Omnivore's Dilemma. Send him information on the book, tell him to have the students read the book and then meet before the class.

Figure out who is in the class for the list of emails.
Send Hazy History to students.
Grade them.

**H** - Figures. What do I need for the figures?
Figure 4 - I have to plot two results in the same figure.
Then, do $$\epsilon=0.5$$ and $$\epsilon=1$$.
Then I have to be able to plot only part of the figure.

Figure 5 - Make a code with carrying capacity.

Figure 4 - I probably changed the figure size.
The most elegant way to solve this is probably to pack everything in a single function. That way, I could call the same function twice or once depending on what I want to do.

The expected outcomes from my function would be:
1.Simplified dynamics
2.t_simple
3.Critical times

Inputs:
-For sure t0, tf, and step.

I can recall having some problems with vectors so I am going to be cautious about them. I am getting closer, but I am afraid I will have problems with lists.

I got an error on the code. This is because one solution talks to the other somehow. I think it is the Hash of the dynamics (the code that tells which dynamics are active,inactive as combination of 1s and 0s)

Initial dynamics:

	{'Growth': 1, 'Burst': 1, 'Decay': 1, 'Predation': 1}
	1111	
	<function Lotka_Volterra_GPBD at 0x7f6d98f95268>

All terms are active at the beginning.
The initial dynamics were changing before and after the function. Be careful with dictionaries.

The code works, but the solutions are different. What is going on? I should plot all the dynamics (hash and dictionaries). It does not find any event.

I should compare the dynamics because there can be so many things wrong. I found one variable wrongly named.

My goal is to produce two plots for different values of epsilon in the same code. Can I do this with the current code structure? I don't think so.
Running some final tests to make sure that the original piece of code and the function produce the same result.

I take the original result for bacteria and the new result for bacteria and make the difference. It should be zero. I print it to a file and it works.
Do the same for phages. It works too.

Comment old pieces of code.
Commit and remove "old" code

Although this does not entirely solve my problem, I can probably fit a piece of code inside a 'for' loop and solve for two different values of epsilon. I can also reduce the time for the plot. I can do a copy of the code with the name of the figure I want to plot.

## February 15

**H** I don't think I can change the code the way I wanted, but I can probably produce a plot with the two curves for different values of epsilon. I will write a code specifically for that. I am going to call the code 'Figure 4d'

This works now. I would like to plot the figure for smaller times, but I just need to change the x axis...

This is done now, which is good. Now, I should check the dynamics and how they change, if everything makes sense and so on. My goal will be to:
1. Compare what I see with the regular code. - this works
2. Track the dynamics of either epsilon. - I am thinking how could I output the dynamics and times they started at to a file. Since the outputs are spread across different functions, I am not sure how to do this. I wonder how could I keep a writing file open to write and close it whenever I want to.
3. Compare them.
4. Mount the figure (maybe right after lunch?)

In the mean time, I should go for Figure 5 as well.


Regarding 2. Here is a table of the dynamics:

|# of Dynamic|Crit Time $$\epsilon=0.5$$| Crit Time $$\epsilon=1$$| Dynamic $$\epsilon=0.5$$| Dynamic $$\epsilon=1$$     |
| ----------- | ----------- | ----------- | ----------- |
|0 | 0.00  | 0.00 |GPBD|GPBD|
|1 | 15.30 | 10.26 |GPD |GPD|
|2 | 29.93 | 19.42 |GD  |GD|
|3 | 31.89 | 25.25 |GBD |GBD |
|4 | 46.53 | 34.41 |GPBD|GPBD |
|5 | 66.87 | 44.67 |GPD |GPD |
|6 | 81.50 | 53.83 |GD  |GD |
|7 | 83.47 | 59.66 |GBD |GBD |
|8 | 98.10 | 68.82 |GPBD|GPBD |
|9 | 118.44| 79.08 |GPD |GPD |
|10| 133.07| 88.24 |GD  |GD |

The dynamics are identical, but activations and deactivations change in time. The smaller $$\epsilon$$ the earlier do tipping points arrive. Code wise, everything makes sense, but I am puzzled by these results. What is the role of $$\epsilon$$ actually in this case? I think it depends. But in this case, and considering that you start from the full dynamics, higher values of $$\epsilon$$ correspond to higher values of concentrations (either phage or bacteria) below which you need to drop to get regime shift. That makes it faster for $$\epsilon=1$$ to shift regimes. The smaller $$\epsilon$$ the more you are going to have to drop. If you are in a quasistable regime, it is very difficult that you drop that far down: you are going to have oscillations caused by competing mechanisms that are not going to let concentration drop very much.

I should correct this code and edit it. Particularly, I would like to put all the results (dynamics, times, and critical times) in a single dictionary.

Now I am going to go for the kick code. My first goal would be to add carrying capacity to the model. I should also calculate the equilibrium concentrations with carrying capacity.
I will have to do something 'ugly' for this particular experiment, where I will define the carrying capacity externally.
Events are tricky in python (again, keep that in mind)

The logarithmic xscale is going to be tricky. Linewidth will also be.
Produce minimally presentable versions for tomorrow. Find sweetspot of step. If 1000 works well with step size=0.01, 1e6, should require a stepsize=10.

## February 16

**M** Lucia. Questions she had and remarks:
$$K=1e9$$
$$f=0$$ - there is no flow of endolysins
She already has data of how fast the bacterial concentration goes down.
It is difficult to measure 'infection rate'
It is possible to measure how bacteria die.
It is possible to measure the decay rate of endolosyns.
Everything looks good so far.


**H** Prepare some plots for today.
Plots ready although some things could be improved. Maybe it is better to focus on the text after lunch?


**M** Toni. Some questions that I have:
-In Matt's kick figure. For the case far from the equilibrium: is there a kick?
-You need to be careful with the logistic model. Some combinations of parameter values may yield negative concentrations of phage.





