---
layout: default
title: Week 3
parent: February 2023
nav_order: 3
---

| Goal | Notes |
| ----------- | ----------- |
|CP|Prepare class for Feb 20 and start preparing it for Feb 27|
|(PH)| Find conditions of quasiequilibrium, hypothesis for O2 vs phages, and review for ESA|
|(PH)| Paper dilution samples|
|(MS)| How to do salinity and find an equation |
|Reading (R)| Reading the rocks, Daisy model|
|Others (O)| Correct document for endolysins|

## February 20

**CP** Reading the rocks I.
Think of metamorphic rocks and measurement chapter
What to say about the measurements chapter? Not sure.
Print quiz and script

I am not very confident about the types of rock, particularly metamorphic rocks. What is special about them:

1. Recrystalization. They keep a memory of where they have been.
2. Metasedimentary rocks.
3. Index minerals are an example of metamorphic rocks.
4. Burial metamorphism corresponds to normal conditions: the corresponding temperature at the mantle consistent with the expected pressure.
5. Some other rocks have been metamorphosized under unusual conditions
   5.1. high temperature, low pressure: contact metamorphism. volcanic activity
   5.2. low temperature, high pressure: insulation. This happens in the subduction zones of the ocean floor. Rocks that go down the crust by subduction and come back (blueschists.) They are unique to the earth (recycling).
6. The geological record is biased towards major events. Hutton realized this (unconformity)

Summary: metamorphic rocks are those that have changed chemically or physically via recrystallization. Index rocks are the most important examples, because they act as geothermometers or geobarometers. Even though they are useful, the geological record is biased toward major events and marine environments.

7. Burgess shale: the pompey of fossils. A catastrophic event recorded the 'daily life' of the fauna in Cambridge.

## February 21

**MS** Salinity
I am going to take a look at the MS now. I need to figure out why my code does not work with two variables and/or know what questions should I ask about it.
I don't see anything weird about my code: I just add an extra variable.
Hypotheses why the code might not work:
1. The indexing of the variable XLABS is wrong.
2. Wrong prior.
Is the salinity=0 a problem? At least I am getting a different error. I think it is related to the simpy library. I updated the library and it does not work. I am suspeting data types might be a problem. I will check types.

I found it and it was a stupid mistake: Apparently 'S' for Salinity was a forbidden name.

What questions do I have? That depends on the results I want to get

Think about datasets for salinity. Also models.

**O** Finding datasets for salinity

Finding these datasets is not trivial. Precisely because there are too many and they seem to be very big. If I enter the website of https://argo.ucsd.edu/data/ I see a section called 'Argo data files' and another section called 'Data from GDACs'. That's probably what I am looking for and I should read about them in order to be able to obtain data. Remember: my goals is to obtain O2 as a function of temperature and salinity with as many temperatures and salinities as possible.


## February 22


**MS** - Run the Machine Scientist with three parameters and 5000 steps. 

**CP** - We know that the Earth+Moon is the result of a collision between early Earth and another planet of the size of Mars.
There is a lot of interaction between the Earth's crust and the mantle. And water controls these transactions.
Water is very important for the generation of the continental crust (continents?) and many other geological processes, not only life.
Ocean subduction occurs with slabs of rocks with water. Is subduction related to volcanic activity?

**H** - I would like to do the phase diagram figure. This implies that I should keep working in the code to make it smoother. More specifically, make the solver of the dynamics just an equation.
I decided I am going to move forward with fixing the code. My goal has been to implement the automatized solution for r dominant scale. This means that the code will be jumping from one dynamic to the other automatically: the code will find an event (tipping point), will check wich term has been activated or deactivated, will look at the corresponding dynamic and run it until the next tipping point or until it finds the final time point. It looks like it has worked (the mechanism's already built) but I want to run a final test: produce both solutions, save the solutions to a text file and confirm there are no differences in those files). It worked!

Now I am correcting the method for m as a dominant timescale. I think I did it but I found two errors:
1. I changed something in the dataframe for the active bioprocesses (the index). There is a function that depends on the first element of the index being zero. I have to remove that part of the dataframe.
2. xticks for m dominant.

This works, I need to fix errors on plots and on the dataframe thing

## February 23

I am trying to put together figures for the paper we talked about two weeks ago. I need to think of the minimal effort to get this done. I have the figures, I will need to get a draft?

I have equations and figures. I am going to work in minimally functioning captions.

I should correct the equations and the flow they follow.

## February 24

**M** Goals with F.
What to do in 2023. What are the priorities?

