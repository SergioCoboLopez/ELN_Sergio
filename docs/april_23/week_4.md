---
layout: default
title: Week 4
parent: April 2023
nav_order: 4
---


## April 24

It seems that everything was working well on Friday.
I am going to make sure of this by running the three scenarios I devised.
Then, I am going to make a figure with four scenarios:
0.9*Bc, 0.9*Pc, both 0.9* and both 0.75*

## April 25

Test on windows laptop
Make a zoom test with Andres before Friday
Announce biomath to everyone.

If people say it's trivial: "why haven't we seen anywhere else? Do you know any reference of this method?"

General equations before lotka-volterra

First paragraph in the results of the draft.

Me acerco poco a poco al critico en cada experimento.
5 experimentos distribuidos logaritmico.
5 del fago y 5 de la bacteria.
Luego haces 5 combinados.

Resultado en una sola grafica.

Eje x: cuanto te desvias del equilibrio de media (para bacteria y/o fago)
Eje y: amplitud promedio de bacterias y fagos y relativa al equilibrio.
       Periodo (tiempo oscilacion completa relativo a la escala temporal de observacion)

Pinta linea diagonal 1 a 1.

Criticals depend on temporal scale.

Periodo: two minimums

t_f= tau in this case.
Organize per decades: 10**x or 5*10**x

I need to generate 3x5 perturbations on: bacteria, phage, and both.

I am going to start with phage. I need to make five perturbations:
two perturbation over the critical concentration, one perturbation around the critical, and two perturbations below the critical.

Organize them by decades: how do you do that?

The critical concentration of bacteria is:
Bc=1.11e3 cells/ml
The initial concentration is:
B0=Beq=2.22e4 cells/ml

If I want to do this by orders of magnitude I could do:

B0_Kick_1=1e4
B0_Kick_2=5e3
B0_Kick_3=1e3
B0_Kick_4=5e2
B0_Kick_4=1e2

For the phage:

Peq=3.33E+06
Pc=1.67E+05


P0_Kick_1=1e6
P0_Kick_2=5e5
P0_Kick_3=1e5
P0_Kick_4=5e4
P0_Kick_4=1e4

If I want to change both:

B0_Kick_1=1e4, P0_Kick_1=1e6
B0_Kick_2=5e3, P0_Kick_2=5e5
B0_Kick_3=1e3, P0_Kick_3=1e5
B0_Kick_4=5e2, P0_Kick_4=5e4                                                           
B0_Kick_4=1e2, P0_Kick_4=1e4


Make tf=300
Will I need to compute something else? We will see.

Period of oscillation: count two minimus and measure time of the second minimum (don't know how am I going to do that)
This is not working and you will need to do the same you were doing with the events. You will need to set a threshold beyond which minima occur.


How much your minimum goes below the equilibrium concentration.

I think this is done already.

How to protect myself now?
He could argue about the definition of a period, or the minimum respect to the equilibrium concentration.

I will need to make a couple of changes to the code and let it run afterwards.

Two questions?

1. How do I deal with the x axis?
2. How do I deal with the period?

About question 1
This would be a measure of your kick.
I think you could have something like:
average(Kick_b,Kick_p)
How do you measure kicks?
1. B0_k/Beq you would get numbers between 0 and 1. For the phage it would be 1 in this case
2. Beq - B0_k

## April 26

I have a scaffold of the folder.
I need to think what should I do now.
I am going to start with the figures.

## April 27

At the very least, I should be able to put all figures in the presentation.


Do bacteria and phage separely at first:

2x2 figures: period and minimum concentration

logscale both x and y

axis x:Vertical lines for the equilibrium concentration and critical concentrations.

axis y: absolute value of minimum of the oscillation

Add period (even if you don't have a period, just put a line at 1)

Then add dots of double perturbation. Do it with different color.

About the period: assume that if you don't see two oscillations, you do not have an oscillating pattern.

Google drive:

add
'manuscript.tex'
don't do pnas formatting
If you have time, download another .cls (most generic as possible)
Put first version of manuscript in folder 'milestone_versions'

name of figures

add to pngs and pdfs "_copy" at the end
Instead of rel and no rel, growth-yes and growth-no
Remove every google spreadsheet in the folder

The next thing you will have to do is check the bibliography and correct citations.

