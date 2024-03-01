`timescale 1ns / 1ps

module laser_surgery_sys_tb;
  
  reg button; //input
  reg clk;    //input
  wire LED;   //output

laser_surgery_sys uut (
    .button(button),
    .clk(clk),
    .light(LED)
);

initial clk = 0;
always #5 clk =~clk;
initial begin
	$dumpfile("dump.vcd"); $dumpvars;
  
//4 test cases
button = 0;
  #100;
  $display("TC00 ");
  if ( {LED} != 1'd0 ) $display ("Result is wrong %b", {LED});
  
button = 1;
  #100;
  $display("TC11 ");
  if ( {LED} != 1'd1 ) $display ("Result is wrong %b", {LED});
  
$finish();
end
endmodule
