---
layout: default
title: Week 2
parent: March 2023
nav_order: 2
---


| Goal | Notes |
| ----------- | ----------- |
|(H)|Redo calculations with what we discussed with Toni last week|
|(PH)|Fix model for phacos with putative model for eDAR;do the hyperion equations for the metabolic model|
|(MS)|Fix things of the machine scientist|
|(O)|Email Savannah, keep working on the subaquatic sample paper|

## March 13

**M** Breeann and Heather
Microbialization/viralization paper. Shift the framework.
Future directions: propose microbialized/viralized.
Build a model for the dichotomy. How does the system go between viralized and microbialized.
Two papers: one to give background and another one to explain the dichotomy properly?

Work on the diagram and make it more beautiful.

Send the draft.

NA Nucleic acid

AA Aminoacid

## March 14

**R** Gaia
Dissipation is not very different from friction, actually. If energy is transformed from one form to another, and if the capacity of doing work of the final form is less than that of the initial form, there has been thermodynamic dissipation.

**H** I need to be more careful with branches in the future. The reason the website was not updating was because I had to move to the specific branch of github pages. On top of that, there is a memory limitation on file sizes; I had to remove the file from the remote branch and prevent my code to produce that file.

**PH** I went back to the metabolic model. The metabolic model had originally two parts: the phage bacterial dynamics and the metabolic part. Both parts of the model are connected through $$eDAR$$. To make things simpler, I am going to play with eDAR artificially so that I can really test my model and do the Hyperion part of it.

Now, suppose that eDAR oscillates over time. And the corresponding Hill Function oscillates between 0 and 1. The period of oscillation would determine the timescale at which things happen.

## March 15

**PH** PHACOS Model

After the normoxic event, I would expect an aerobic metabolism kicking in.
The system's thermostat is not working properly. And I don't know why. But that explains a lot of
things.

First, I have something called "Experiment Switch". This activates, as expected at 48 hours. Nothing
wrong with it.
Once it switches on, I should expect a flow of 'hose_on' water.
O2 hose is a conditional quantity. And it depends on an event (the actual thermostat).
That thermostat is inactive by default. And it never switches on.

The thermostat works. However, the O2 consumption is too low to activate it. If I reduce the bandwidth
so as to activate the thermostat nothing changes that much.

## March 16

**PH** PHACOS model

It seems that the data was and is correct. The model has to be wrong then.

**H** Fix code.

I should get rid of the epsilon terms and let the timescale be the observation time. How should I do that? I think I should determine 'time_f' as the same as epsilon.
I need to fix the code. Partially fixed.

Tomorrow:
think of the putative model of eDAR for the model with Jenna and maybe PHACOS.
Write the hyperion equations for the metabolic model.
Fix code.
