---                     
layout: default                                              
title: Week 4                                                     
parent: December 2023                                                
nav_order: 2                                                        
---                                                                  
                                                                     
| Goal | Notes |                                                     
| ----------- | ----------- |                                        
|(W)| Submission to  biorxiv | 
|(PH)| |                                           
|(R)| |                                                              
|(Code)| |                            
|(O)|  |

## December 25

**W** I need to submit the paper to biorxiv. One of the problems I will face is that I need to submit the main text and the supplementary materials separately. It does not make any sense that I reference figures of the supplementary in the main text. Unless I can "talk to them" from one document to another.

The right solution would be to:

1. Label the supplementary figures as S1, S2, ... , SN.
2. Have the main text and supplementary talk to each other.

Apparently, there are ways to do this. Maybe I can split main and supplementary text. Ok, this works.
I have to check if the figures are well referenced.

## December 26

**W** and **code** I figured out how to reference figures across the supplementary materials and main text.

The first step is to use the packages 'xr' and 'cleveref'. 'xr' is the package that allows you to reference external documents. It seems that 'cleveref' allows you to hyperreference figures across documents, but I do not really need that.
So I can reference figures from the supplementary materials as \ref*{figure} (the asterisk removes the hyperlink)
Finally, I had to ensure figures from the supplementary materials appear with an 'S' before them.
To accomplish this I go to the supplementary materials document and do this:
\renewcommand{\thefigure}{S\arabic{figure}}
I assume this tells latex "put an 'S' before labeling any figure"