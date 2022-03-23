// ELEC241 C1 2022
//Structural Version

/*
A	B	C	Y		Y1		Y2
0	0	0	00		0		0
0	0	1	01		0		1
0	1	0	01		0		1
0	1	1	10		1		0
1	0	0	01		0		1
1	0	1	10		1		0
1	1	0	10		1		0
1	1	1	11		1		1
*/

module task1a(output logic Y1, Y2, input logic A, B, C);

wire a1, a2, a3, a4, notA, notB, notC;

//Y1
not n0 (notA, A);
not n1 (notB, B);
not n2 (notC, C);
and and1 (a1, notA, B, C);
and and2 (a2, A, notB, C);
and and3 (a3, A, B, notC);
and and4 (a4, A, B, C);
or res (Y, a1, a2, a3, a4);

//Y2
and and11 (a11, notA, notB, C);
and and22 (a22, notA, B, notC);
and and33 (a33, A, notB, notC);
and and44 (a44, A, B, C);
or res2 (Y, a11, a22, a33, a44);

endmodule

	