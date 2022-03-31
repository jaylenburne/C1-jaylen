module task1_tb;

//Use these for the inputs.
logic a,b,c;

//Use these two signals for the outputs
logic [1:0] y_structural, y_other;

// Instantiate both UUT
task1a u1 (y_structural, a, b, c);
task1b u2 (y_other, a, b, c);

initial
begin
	
	a = 1'b0;
	b = 1'b0;
	c = 1'b0;
	#50ps;
	a = 1'b0;
	b = 1'b0;
	c = 1'b1;
	#50ps;
	a = 1'b0;
	b = 1'b1;
	c = 1'b0;
	#50ps;
	a = 1'b0;
	b = 1'b1;
	c = 1'b1;
	#50ps;
	a = 1'b1;
	b = 1'b0;
	c = 1'b0;
	#50ps;
	a = 1'b1;
	b = 1'b0;
	c = 1'b1;
	#50ps;
	a = 1'b1;
	b = 1'b1;
	c = 1'b0;
	#50ps;
	a = 1'b1;
	b = 1'b1;
	c = 1'b1;
	#50ps $display("DONE");

end

endmodule

