module task2_tb;

// Add internal signals her

logic CLK, n_RESET; //input
logic [15:0] Q;     //output

parameter N = 16'b1010110011100001;
int counter = 0;
task2 c1 (Q, CLK, n_RESET);

task loop1;
  $display("Initial value is correct");   //when initial value is correct and passes 
endtask: loop1;

task loop2;
  $display("Full loop has passed");       //when initial value is equal to 65535
endtask: loop2;

task value1;
  $display("Value 1 is correct");         //when value 1 is correct and passes 
endtask: value1;

task value2;
  $display("Value 2 is correct");         //when value 2 is correct and passes 
endtask: value2;

task value3;
  $display("Value 3 is correct");         //when value 3 is correct and passes 
endtask: value3;

task failed;
  $display("Fail");                       //when outputs are different
endtask: failed;

initial 
begin

//Write testbench here

n_RESET = 0; //resets the signal
#1ps
n_RESET = 1;

  CLK = 0;          //block to simulate clock cycle
    repeat(131070)    //clock needs 2ps per peroid, so 65535*2=131070
    #1ps
    CLK = ~CLK;       //inverts clock value
    #1ps
    CLK = ~CLK;
end

always@( posedge CLK ) begin
  if (counter == 0)
    assert (Q == N) loop1(); 
	 else failed();
  else if (counter == 1)
    assert (Q == 16'b1110001001110000) value1;
	 else failed();
  else if (counter == 2)
    assert (Q == 16'b0111000100111000) value2;
	 else failed();
  else if (counter == 3)
    assert (Q == 16'b0011100010011100) value3;
	 else failed();
  else if (counter == 65535)
    assert (Q == N) loop2;
	 else failed();
  counter = counter + 1;
  
end

endmodule
