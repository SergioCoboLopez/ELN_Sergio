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

I am going to take a look at the MS now. I need to figure out why my code does not work with two variables and/or know what questions should I ask about it.
I don't see anything weird about my code: I just add an extra variable.
Hypotheses why the code might not work:
1. The indexing of the variable XLABS is wrong.
2. Wrong prior.
Is the salinity=0 a problem? At least I am getting a different error. I think it is related to the simpy library. I updated the library and it does not work. I am suspeting data types might be a problem. I will check types.

I found it and it was a stupid mistake: Apparently 'S' for Salinity was a forbidden name.