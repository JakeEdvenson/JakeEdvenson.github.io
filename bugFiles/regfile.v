`timescale 1ns / 1ps

//NOT WORKING WITH YOSYS!
//CURRENTLY ONLY WORKS WITH CONFORMAL

//////////////////////////////////////////////////////////////////////////////////
// Company: BYU (Brigham Young University)
// Engineer: Jake Edvenson
// 
// Create Date: 05/4/2022 
// Design Name: regfile
// Project Name: bfasst testing
// Description:A simple register design
// 
// Dependencies: None
// 
//////////////////////////////////////////////////////////////////////////////////


module regfile(clk, readReg, writeReg, writeData, readData);

input clk;
input readReg, writeReg;
input writeData; 
output reg readData; 

reg register [1:0];

always@(posedge clk) begin

    register[writeReg] <= writeData;

    readData <= register[readReg]; 

end

endmodule
