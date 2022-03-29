module task2_tb;

// Add internal signals here
input logic (CLK, n_RESET);
output logic ([15:0] Q);

parameter N = 16'b1010110011100001;
int counter = 0;
task2 c1 (Q, CLK, n_RESET);

task loop1;
  $display("Initial value is correct");   //when initial value is correct and passes 
endtask: value0;

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
  $display("Fail")                        //when outputs are different
endtask: failed;

initial begin

//Write testbench here

end

endmodule
