import numpy as np
import pandas as pd
from matplotlib.pyplot import figure
import seaborn as sns
import matplotlib.gridspec as gridspec
import matplotlib.pyplot as plt


#Read data
#---------------------------
data='../data/Sergios_data.csv'
d=pd.read_csv(data)

print(d.columns)

print(d['Recuento de pasos'])
#---------------------------


#Figure settings
#---------------------------
cm = 1/2.54 #convert inch to cm
width = 8*cm; height=4*cm 

#Fonts and sizes 
size_axis=7;size_ticks=6;size_title=5
line_w=1;marker_s=3


fig=figure(figsize=(width,height), dpi=300)
#---------------------------

plt.plot(d['Fecha'], d['Recuento de pasos'],label='observed')
plt.show()


