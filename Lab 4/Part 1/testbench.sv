`timescale 1ns / 1ps

module fasystem_tb;
  
  reg CLK;    //input
  reg CALL;   //input
  reg CANCEL; //input
  wire LED;   //output

// Instantiate the Unit Under Test (UUT)
 fasystem_bh uut (
  .clk(CLK),
  .call_button(CALL),
  .cancel_button(CANCEL),
  .light_state(LED)
);

initial CLK = 0;
always #5 CLK =~CLK;
initial begin
	$dumpfile("dump.vcd"); $dumpvars;
  
//4 test cases
CALL = 0; CANCEL = 0;
  #100;
  $display("TC00 ");
  if ( {LED} != 1'd0 ) $display ("Result is wrong %b", {LED});
  
CALL = 0; CANCEL = 1;
  #100;
  $display("TC01 ");
  if ( {LED} != 1'd0 ) $display ("Result is wrong %b", {LED});

CALL = 1; CANCEL = 0;
  #100;
  $display("TC10 ");
  if ( {LED} != 1'd1 ) $display ("Result is wrong %b", {LED});
  
CALL = 1; CANCEL = 1;
  #100;
  $display("TC11 ");
  if ( {LED} != 1'd1 ) $display ("Result is wrong %b", {LED});
  
$finish();
end
endmodule
