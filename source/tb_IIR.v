`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/07/29 15:55:20
// Design Name: 
// Module Name: tb_IIR
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
//
// Dependencies: 
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module tb_IIR;

    // Inputs
    reg clk;
    reg rst_n;
    reg signed [7:0] x;

    // Outputs
    wire signed [7:0] y;

    // Instantiate the Unit Under Test (UUT)
    IIR uut (
        .clk(clk), 
        .rst_n(rst_n), 
        .x(x), 
        .y(y)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period, 100MHz clock
    end

    // Test stimulus
    initial begin
        // Initialize Inputs
        rst_n = 0;
        x = 0;

        // Apply reset for 20ns
        #20;
        rst_n = 1;
        
        // Wait for a bit
        #20;

        // Apply a step input
        x = 8'sd100;

        // Run for 1000ns to see the step response
        #1000;

        // Apply another step input
        x = 8'sd-50;

        // Run for another 1000ns
        #1000;

        // Stop the simulation
        $finish;
    end

    // VCD dump for waveform viewing
    initial begin
        $dumpfile("tb_IIR.vcd");
        $dumpvars(0, tb_IIR);
    end
      
endmodule
