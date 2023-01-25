---
layout: default
title: Home
nav_order: 1
---

## Home

This is Electronic Lab Notebook using the template designed by Antoni Luque at the [Luquelab](https://www.luquelab.com). The template was based on recommendations from Noble PLoS Comp Biol 2009, Wilson et al PLoS Comp Biol 2017, and Briney "Data Management for Researchers" (2015), Hunt and Thomas "The Pragmatic Programmer: Your Journey to Mastery" (2019 2nd ed).
The Electronic Lab Notebook has a section for each month. Each month is further divided and weeks and days, where I describe my tasks and thoughts about those tasks.

## Instructions (linux)

When a new month starts, create a folder for the corresponding month:

     mkdir <month_year>

Open a markdown file:

     name_of_month_year.md

And paste this header into it:

    --- 
    layout: default
    title: <Month> <Year>
    nav_order: n
    has_children: true
    permalink: /docs/name_of_month_year
    ---

For example, when I create a folder for April 2023, I will create a folder named 'april_23' and a file named april_23.md with the following header:

    ---
    layout: default
    title: April 2023
    nav_order: 9
    has_children: true
    permalink: /docs/april_23
    ---

In my case the order is 9, but you will have to check the previous month in your list (March 2023). Now, create an additional file for every week in the month. April has four full weeks (four weeks that start in the month of april). Create a first file named week_1.md. This is the header of this file:

---
layout: default
title: Week 1
parent: April 2023
nav_order: 1
---

In the general case, you will have to change the 'parent' section. Now, we will copy and paste this file three times and change the corresponding values (title and nav_order). To make it faster we will use a very short script:

   for i in {2..4}
   do
   cp week_1.md week_$i.md
   done

Now, enter in each file and change the corresponding values.

     



