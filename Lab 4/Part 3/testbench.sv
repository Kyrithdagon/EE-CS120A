`timescale 1ns / 1ps
module lab4_3_tb;
  reg clk;
  reg sw0;
  reg sw1;
  reg sw2;
  reg sw3;
  wire [3:0] an;
  wire [7:0] sseg;
  
dispmux_main_bh uut (
  .clk(clk),
  .sw0(sw0),
  .sw1(sw1),
  .sw2(sw2),
  .sw3(sw3),
  .an(an),
  .sseg(sseg)
);
  
// initial begin
//   clk = 0,
//   sw0 = 0,
//   sw1 = 0,
//   sw2 = 0,
//   sw3 = 0,
// end
  
initial clk = 0;
always #5 clk =~ clk;
initial begin
$dumpfile("dump.vcd"); $dumpvars;
  
  sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 0; //0
  #100;
  $display("TC10 ");
  
  sw3 = 0; sw2 = 0; sw1 = 0; sw0 = 1; //1
  #100;
  $display("TC11 ");
                                                                     
  sw3 = 0; sw2 = 0; sw1 = 1; sw0 = 0; //2
  #100;
  $display("TC12 ");

  sw3 = 0; sw2 = 0; sw1 = 1; sw0 = 1; //3
  #100;
  $display("TC13 ");
  
  sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 0; //4
  #100;
  $display("TC14 ");
                                                 
  sw3 = 0; sw2 = 1; sw1 = 0; sw0 = 1; //5
  #100;
  $display("TC15 ");
                                   
  sw3 = 0; sw2 = 1; sw1 = 1; sw0 = 0; //6
  #100;
  $display("TC16 ");
                                   
  sw3 = 0; sw2 = 1; sw1 = 1; sw0 = 1; //7
  #100;
  $display("TC17 ");
                                                 
  sw3 = 1; sw2 = 0; sw1 = 0; sw0 = 0; //8
  #100;
  $display("TC18 ");
                                                                    
  sw3 = 1; sw2 = 0; sw1 = 0; sw0 = 1; //9
  #100;
  $display("TC19 ");
  
  sw3 = 1; sw2 = 0; sw1 = 1; sw0 = 0; //10
  #100;
  $display("TC20 ");
  
  sw3 = 1; sw2 = 0; sw1 = 1; sw0 = 1; //11
  #100;
  $display("TC21 ");
                                                                     
  sw3 = 1; sw2 = 1; sw1 = 0; sw0 = 0; //12
  #100;
  $display("TC22 ");

  sw3 = 1; sw2 = 1; sw1 = 0; sw0 = 1; //13
  #100;
  $display("TC23 ");
  
  sw3 = 1; sw2 = 1; sw1 = 1; sw0 = 0; //14
  #100;
  $display("TC24 ");
  
  sw3 = 1; sw2 = 1; sw1 = 1; sw0 = 1; //15
  #100;
  $display("TC25 ");
  
$finish;
end
endmodule
