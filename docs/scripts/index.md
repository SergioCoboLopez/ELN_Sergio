---
layout: default
title: Scripts and snippets
nav_order: 3
---

# Python

## Data input/output

Load pickle data:

     import pickle
     
     data_file='path_to_data' + 'data_file.pickle'
     with open( data_file, 'rb') as f:
     	  data=pickle.load(f)


## Figures

This is a general configuration I use for figures in python


```python
#Libraries
import matplotlib.gridspec as gridspec
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.pyplot import figure

#Figure settings
Output_Path='../../../results/Plots/' #A path to save figure
Extensions=['.svg','.png','.pdf']     #Extensions to save figure

#Define figure size in cm
cm = 1/2.54 #convert inch to cm
width = 8*cm*rows; height=4*cm*cols 

#Fonts and sizes 
size_axis=7;size_ticks=6;size_title=5
line_w=1;marker_s=3 #width and marker size


#Select specific colors from a colormap
cmap='RdBu';cmap_pieces= matplotlib.cm.get_cmap(cmap)
color1=cmap_pieces(0.1);color2=cmap_pieces(0.9)
color3=cmap_pieces(0.3);color4=cmap_pieces(0.7)

fig=figure(figsize=(width,height), dpi=300)
```