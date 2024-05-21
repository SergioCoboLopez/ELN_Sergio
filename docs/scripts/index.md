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

any_figure.py

Any_figure.py

```python
import numpy as np
import matplotlib.gridspec as gridspec
import matplotlib
import matplotlib.pyplot as plt
from matplotlib.pyplot import figure

#Data 
#--------------------------------
x = np.arange(21)

a=10; b=25
y_1= a*x + b #linear                                       

c=10
y_2= x**2 - c #quadratic                                         

mu, sigma, n_points = 200, 20, 21
y_3 = np.random.normal(mu, sigma, n_points) #random (normal)        
#--------------------------------                                   


#Figure settings
Output_Path='../../../results/Plots/' #A path to save figure
Extensions=['.svg','.png','.pdf']     #Extensions to save figure

#Define figure size in cm
cm = 1/2.54 #convert inch to cm
width = 8*cm*rows; height=4*cm*cols 


#Figure settings                                                     
#--------------------------------                                    
output_path='figures/'
name_fig='example_fig'
extensions=['.svg','.png','.pdf']     #Extensions to save figure     

#Define figure size                                                  
cm = 1/2.54 #convert inch to cm                                      
width = 8*cm; height=4*cm #8x4cm for each figure in panel

#Fonts and sizes                                                     
size_axis=7;size_ticks=6;size_title=5
line_w=1;marker_s=3
#--------------------------------

#Plots                                                               
#--------------------------------                                    
plt.plot(x,y_1, linewidth=line_w,color='blue', label='linear')
plt.plot(x,y_2, linewidth=line_w,linestyle='--',color='red',label='quadratic')

line_w=1;marker_s=3 #width and marker size


print(type(x[:-1][::2]))
print(type(y_3))
plt.scatter(x,y_3, s=marker_s, color='green', label='random')


#Labels                                                              
plt.xlabel('x',fontsize=size_axis);plt.ylabel('y',fontsize=size_axis)

#Ticks                                                               
x_step=5
xtick_labels=[tick for tick in x[::x_step] ]
plt.xticks(xtick_labels, fontsize=size_ticks)

y_step=100
ytick_labels=[tick for tick in range(0,450,y_step) ]
plt.yticks(ytick_labels, fontsize=size_ticks)

#legend                                                              
plt.legend(loc='best',fontsize=size_ticks,frameon=False)

#save fig                                                            
for ext in extensions:
    plt.savefig(output_path+name_fig+ext,dpi=300)

plt.show()
#-------------------------------- 
```