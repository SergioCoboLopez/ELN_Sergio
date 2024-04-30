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


##Figures

I like to have a general configuration for figures to make sure they are consistent.


```python
import matplotlib.gridspec as gridspec
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.pyplot import figure
```


This was a test


    #Figure settings
    #===================================================================
    #Path to save figure
    Output_Path='../../../results/Plots/'

    #Extensions
    Extensions=['.svg','.png','.pdf']

    #Gridspec parameters
    rows=r;cols=c

    #Figure size
    cm = 1/2.54 #convert inch to cm
    width = 8*cm*rows; height=4*cm*cols #8x4cm for each figure

    #Fontsizes
    size_axis=7;size_ticks=6;size_title=5


    #Colors and markers
    cmap='RdBu';cmap_pieces= matplotlib.cm.get_cmap(cmap)
    color1=cmap_pieces(0.1);color2=cmap_pieces(0.9)
    color3=cmap_pieces(0.3);color4=cmap_pieces(0.7)

    line_w=1;marker_s=3
    #===================================================================		