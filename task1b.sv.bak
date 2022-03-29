//Dataflow or behavioural only

/*
A	B	C	Y1 Y2
0	0	0	0  0
0	0	1	0  1
0	1	0	0  1
0	1	1	1  0
1	0	0	0  1
1	0	1	1  0
1	1	0	1  0
1	1	1	1  1
*/

module task1b(output logic Y1, Y2, input logic A, B, C);

wire term0;
wire term1;
wire term2;
wire term3;

//Y1
assign term0 = ~A & B & C;
assign term1 = A & ~B & C;
assign term2 = A & B & ~C;
assign term3 = A & B & C;
assign Y1 = term0 | term1 | term2 | term3;

//Y2
assign term4 = ~A & ~B & C;
assign term5 = ~A & B & ~C;
assign term6 = A & ~B & ~C;
assign term7 = A & B & C;
assign Y2 = term4 | term5 | term6 | term7;

endmodule

