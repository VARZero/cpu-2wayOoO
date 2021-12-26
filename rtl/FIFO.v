module fifo_70x32(clk, rst, indata, outdata, full, empty, ioch);
    input clk, rst;
    input [1:0] ioch;
    input [69:0] indata;
    output [69:0] outdata;
    output full, empty;
    
    reg [2239:0] memorys;
    reg [4:0] addr;
    
    always @()
endmodule