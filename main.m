p1 = input('Input preasure for node 1 : ');

row1 = [+1.0, +0.0, +0.0, +0.0, +0.0, +0.0];
row2 = [+0.3, -1.3, +0.5, +0.5, +0.0, +0.0];
row3 = [+0.0, +0.5, -1.6, +0.6, +0.0, +0.5];
row4 = [+0.0, +0.5, +0.6, -1.6, +0.5, +0.0];
row5 = [+0.0, +0.0, +0.0, +0.0, +1.0, +0.0];
row6 = [+0.0, +0.0, +0.0, +0.0, +0.0, +1.0];

A = [row1; row2; row3; row4; row5; row6];
b = [p1; 0; 0; 0; 0; 0];

x = A\b;

bar(x, 'B');
xlabel('Node number')
ylabel('Pressure (bar) ')
title("Water pressure at different nodes in the network");