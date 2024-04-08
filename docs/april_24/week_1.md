---
layout: default
title: Week 1
parent: April 2024
nav_order: 1
---

| Goal | Notes | 
| ----------- | ----------- |
|(W)| |
|(PH)|Send email to T and F; check calculations; introduce whatever corrections seem reasonable |
|(R)|Papers Marc and Oscar |
|(ANN)|Check processes and see if everything is done until dataid=3 |
|(O)|Email and code for Heather |

## April 4

**thoughts** Under the rules presented by the author, planning my week or responding to an email would probably not qualify as deep work. But I think it is reasonable to adapt the rules to my personality and to the best way they can work for me. Sending those emails implies a huge mental load for me and I feel a strong urge to procrastinate it, so I think it is well justified to do that.
Planning my day is probably the best way to move on in a structured way.
Sensu strictu, this is not deep work. Deep work would be writing a code to automatically fill this table. Or in a more automatic way. But the work would not be worth it, I think.

The first thing I am going to do is to check the processes that were running on the computer. Are they done? Two processes seem to be stuck. I did a very simple script to check how long they've been stuck. Process 2, 18 has been stuck since 04/01. I am going to kill it.
I can imagine a simple script that kills a process with the dataid and runid set by the user and also deletes the csv file.
If they are not, I should submit whatever is left. This is done.
If they are, I would submit a couple of batches and look at whether the results make sense or not. Somehow, I should start thinking about the project and propose something I want to do about it.
This can be done eitherway. To do that, I should be able to identify processes by argument name.
Remember: when you kill a process, you start the following one. That's what just happened here. You should kill the whole process.
Only run 12 seems to be waiting on dataid=2
I am going to start two runs on dataid=3. I am going to assume runid=1 did not happen.
So I will do 1 to 4, 5 to 9.

0,11 is wrong because it starts from step > 20000

I am going to check results on dataid=0 and dataid=1.
I see a few things wrong with dataid=0.

| Dataid | Runid | Trend  | MDL                | Steps |
| ------ | ----- | ------ |--------------------|------ |
|   0    |  0    |  Up    |20.294781 57.268934 | 49999 |
|   0    |  1    |  Down  |20.294781 9.069446  | 47474 |
|   0    |  2    |  Up    |25.660849 77.879671 | 49999 |
|   0    |  3    |  Down  |20.294781 -28.965687| 49999 |
|   0    |  4    |  Down  |20.294781 -67.018353| 3720  |
|   0    |  5    |  Up    |20.294781 65.488852 | 49999 |  
|   0    |  6    |  Up    |23.974728 211.3611  | 49999 |	  
|   0    |  7    |  Up    |20.294781 192.837103| 49999 |	  
|   0    |  8    |  Up    |20.294781 31.069555 | 49999 |	  
|   0    |  9    |  Up    |20.294781 152.280483| 49999 |
|   0    | 10    |  Up    |20.294781 32.910901 | 49999 |
|   0    | 11    |        |      |          |	       |    
|   0    | 12    |  Down  |20.294781 -29.377455| 49999 |
|   0    | 13    |  Up    |23.992715 148.358166| 49999 |
|   0    | 14    |  Up    |25.027049 33.581254 | 49999 |
|   0    | 15    |  Up    |20.294781 86.598311 | 49999 |
|   0    | 16    |  Up    |20.294781 146.491785| 49999 |
|   0    | 17    |  Down  |20.294781 13.824629 | 49999 |
|   0    | 18    |  Up    |20.294781 115.226628| 49999 |
|   0    | 19    |  Up    |20.294781 193.571991| 49999 |

| Dataid | Runid | Trend  | MDL                | Steps |
| ------ | ----- | ------ |--------------------|------ |
|   1    |  0    |  Up    |28.931262 261.07662 | 49999 |
|   1    |  1    |  Down  |28.931262 -0.833894 | 6324  |
|   1    |  2    |  Up    |28.931262 151.835267| 49999 |
|   1    |  3    |  Up    |28.931262 163.623833| 49999 |
|   1    |  4    |  Up    |37.995265 82.429045 | 49999 |
|   1    |  5    |  Up    |28.931262 98.223109 | 49999 |
|   1    |  6    |  Up    |28.931262 194.105650| 49999 |
|   1    |  7    |  Up    |36.575994 235.663349| 49999 |
|   1    |  8    |  Down  |28.931262 22.224269 | 49999 |	  
|   1    |  9    |  Up    |28.931262 362.259561| 49999 |
|   1    | 10    |  Up    |28.931262 149.727488| 49999 |
|   1    | 11    |  Up    |33.443178 59.31554  | 49999 |	       |    
|   1    | 12    |    || 49999 |
|   1    | 13    |  Up    |23.992715 148.358166| 49999 |
|   1    | 14    |  Up    |25.027049 33.581254 | 49999 |
|   1    | 15    |  Up    |20.294781 86.598311 | 49999 |
|   1    | 16    |  Up    |20.294781 146.491785| 49999 |
|   1    | 17    |  Down  |20.294781 13.824629 | 49999 |
|   1    | 18    |  Up    |20.294781 115.226628| 49999 |
|   1    | 19    |  Up    |20.294781 193.571991| 49999 |




**R** Revised manuscript
I am going to read the answers to my comments and see if they make sense or convince me. That ensures I will not be contradicting myself. The, I should go over the changed text to double check.

Comment 1 - Validation
Not convincing. Either of us is not understanding something very fundamental. I don't see a contraction between clustering.
"Thus, the authors make use of only the abundance data"
"Our model makes use of the microbiome co-occurrence network that is constructed from the microbiome abundance data."
I don't think this makes any sense. I imagine label as group number or group category. But precision, recall, and accuracy are perfectly possible. You could measure the precision of your method at classifyin microes in their corresponding group.

Comment 2 -  I don't understand

Comment 3 - Big binary heatmap
Seems acceptable

Comment 4 - "Conceptual" figure
Harmless but not very insightful

Comment 5 - Fundamental questions about the paper
Convincing
Seems that ARI and label switchin is the central thing about their method. That makes me hopeful that they are at least trying to validate the method.

Comment 6 - novelty of the paper
Satisfactory

Comment 7 - Moving parts of the manuscript to the supplementary
Not satisfactory

Comment 8 - SBM and community detection
Relatively satisfactory

Comment 9 - References and citations
Satisfactory

Comment 10 - References and citations
Satisfactory

Comment 11 and 12 - Clarification about notations
Satisfactory

Comment 13 - Notation equations
Relatively satisfactory

Comment 14 - Concept clarification
Satisfactory

Comment 15 - Notation
Satisfactory

Comment 16 - Table for conceptual figure
Satisfactory

Comment 17 - K=7 and elbow points
Not very convincing. I think they are confirming that the choice of K is arbitrary. It is what looks better to them.

Comment 18 - text
Convincing

Comment 19 - text
Convincing

Comment 20 - My mistake

Comment 21 - Figure cosmetics
Convincing

Comment 22 - Figure 5 (now Figure 3)

Comment 23 - Shannon diversity
I did not understand

I don't know what to do about this paper. They did a good amount of work, but some things really do not seem convincing. Particularly the validation part.
I am thinking of re-reading it to see if it makes more sense

I think ARI measures how well the community detecting algorithm captures the structure.
Then, I can think of Heather's information. And somewhere, I should put Toni's email and start crafting a response. I need to be strategic about it and anticipate the fusion that he might experiment. That's part of the depth.

**ANN** I also need to know what to do about this project. Or what to propose. I will shift my interest for this hour towards looking at the python notebook.

Let's look at the pysr thing.
Ok, so this pysr thing. In the main script we are working with. It seems to compare data with the model created by pysr.
It is exactly the same you are doing with the BMS. Where you are comparing the ANN-generated data against the BMS-generated models.

But, you need to generate the pysr models too. Let us try this, which is on the second python notebook. It seems that notebook starts reading ANN-generated data, so we will have to adapt it to one-dimenstional data.
Would that be enough?

It seems that the python code and the notebook do almost the same thing (different parameters). The notebook looks more visual to me and more of a final version too. I am going to try that.



**PH** Errors
Go to code percapfinit.py and check standard error of the mean (std) as a percentage.

Before saving the results as dictionary and dataframe, multiply error by 100.
Then calculate std over the percentage error.
Save results into dataframe and name it differently.
Look at results (particularly for the decay)

**O** Heather
I think I found the code. I need to change it so that it saves the figures more intuitively. Or it does not save them altogether. It is not clear what I am doing in this code.


**tomorrow** This is how I expect to organize my working blocks:
Block 1 - check processes: see if they are stuck. If they are stuck relaunch them. This is done, but I need to make a table of running processes
          review of paper. Finish reading comments and assess them.

Block 2 - Observe what the python script does for dataid=0 and potentially dataid=1 and 2

Block 3 - Buffer block between dealing with the ann datasets and starting taking care of Heather's code and email

Block 4 - Start crafting email for Heather. If there is no time, at least come up with a reasonable answer.
      	  code heather: Finish commenting it and write down for yourself what the code actually does.
	  Start reassessing what you will have to do again for the percapfinit project
	  Start crafting email for them
          

I am going to test something with PySR. I have the feeling that I've been finding multiple models with different codes and configurations. I suspect a single run generates a single model. Then you name your model after the particular dataid you were using.
I am going to delete the models that worked and start again.

| Dataid | Runid | Trend  | MDL                | Steps |
| ------ | ----- | ------ |--------------------|------ |
|   3    |  0    |  Finished |28.931262 261.07662 | 49999 |
|   3    |  1    |  Finished  |28.931262 -0.833894 | 6324  |
|   3    |  2    |  Finished (but code broke)  |28.931262 151.835267| 49999 |
|   3    |  3    |  Finished |20.294781 -28.965687| 49999 |
|   3    |  4    |  Finished  |20.294781 -67.018353| 3720  |
|   3    |  5    |  Finished |20.294781 65.488852 | 49999 |  
|   3    |  6    |  Finished |23.974728 211.3611  | 49999 |	  
|   3    |  7    |  Running  |20.294781 192.837103| 49999 |	  
|   3    |  8    |  Running  |20.294781 31.069555 | 49999 |	  
|   3    |  9    |  not yet  |20.294781 152.280483| 49999 |
|   3    | 10    |  not yet  |20.294781 32.910901 | 49999 |
|   3    | 11    |  not yet  |      |          |	       |    
|   3    | 12    |  not yet  || 49999 |
|   3    | 13    |  not yet  || 49999 |
|   3    | 14    |  not yet  | | 49999 |
|   3    | 15    |  not run  | | 49999 |
|   3    | 16    |  not run  || 49999 |
|   3    | 17    |  not run  | | 49999 |
|   3    | 18    |  not run  || 49999 |
|   3    | 19    |  not run  || 49999 |

## April 5

Block 1 - check processes: see if they are stuck. If they are stuck relaunch them.
      	  Finish tables for different ids

Block 2 - Review of paper. Start re-reading and focus on the validation for the models. Is there something you did not understand?

Block 3 - Buffer block between dealing with the ann datasets and starting taking care of percapfinit and email

Block 4 - Start reassessing what you will have to do again for the percapfinit project
	  Start crafting email for them