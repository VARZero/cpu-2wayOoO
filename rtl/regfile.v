module regfile_16x16(clk, rst, addr, indata, outdata, ioch);
    input clk, rst;
    input [3:0] addr; // 주소
    input [15:0] indata; // 입력 데이터
    output [15:0] outdata; // 출력 데이터
    input ioch //입출력 지정 (0일때 출력 1일때 입력)

    reg [15:0] registers [15:0]; // 레지스터

    always @(posedge clk or negedge rst) begin
	    if (rst == 1'b0) begin
		    registers[O] <= O;
		    registers[1] <= O;
		    registers[2] <= O;
		    registers[3] <= O;
		    registers[4] <= O;
		    registers[5] <= O;
		    registers[6] <= O;
		    registers[7] <= O;
		    registers[8] <= O;
		    registers[9] <= O;
		    registers[10] <= O;
		    registers[11] <= O;
		    registers[12] <= O;
		    registers[13] <= O;
		    registers[14] <= O;
		    registers[15] <= O;
	    end
	    else begin
		    if (ioch == 1'b0) begin
			outdata <= register[addr];
		    end
		    else begin
			register[addr] <= indata;
		    end
	    end
    end
endmodule
