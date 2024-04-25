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


