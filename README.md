# Neural Networks implementation in Occam for Transputers

*** This is intended for Historical Interest Only. ***\
*** There is unlikely any practical value here. ***

At the time the fastest desktop CPU was Intel 80386 33MHz,
even with the luxury of 80387 FPU, Transputers were a better option
to run the demanding neural network algorithms and get some reasonable
performance out of them. One ideal of Transputers was that if a program
was not fast enough, you could simply add more Transputers to the system
while keeping the program unchanged, even recompilation was not required.

Occam was the native parallel programming language for Transputers.
The parallel nature of Occam allowed to implement parallel algorithms,
including neural networks, in simplier programs.

Here is a collection of a few neural network algorithms implemented in
Occam more than 25 years ago. The details of how they worked and whether
they actually worked are long forgotten. The purpose of presenting these
code is mainly for historical interest only. For those who come across
Transputers and Occam and wonder what the parallel program language looks
like, here are a few samples.
