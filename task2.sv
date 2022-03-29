
module task2 #(parameter N=16'b1010110011100001) (output logic [15:0] Q, input logic CLK, n_RESET);

//Write solution here

logic [5:0] feedback;  //feedback is a 6 bit array as that covers all values that pass the xor gates
always_comb begin 

   feedback[5] = (Q[0]);            //bit 0 shifts to bit 16
	feedback[4] = (Q[15]);           //bit 16 shifts to bit 15
	feedback[3] = (Q[14] ^ Q[0]);    //bit 15 and bit 0 are xored, shifted to bit 14
	feedback[2] = (Q[13] ^ Q[0]);    //bit 14 and bit 0 are xored, shifted to bit 13
	feedback[1] = (Q[12]);           //bit 13 is shifted to bit 12
	feedback[0] = (Q[11] ^ Q[0]);    //bit 12 and bit 0 are xored, shifted to bit 11
	
end

always_ff @( posedge CLK, negedge n_RESET) begin  //flip flop with clock on postive edge and n_RESET on the negative edge
   if (n_RESET == 1'b0) begin                     //when n_RESET equals 1, Q is then the starting point refernce
	   Q <= N;
	end else begin
	   Q <= {feedback[5:0], Q[10:1] };             //concatenates the array, shifts bits 1 to 10 and adds feedback solutions
	end
end

endmodule