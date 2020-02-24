module buffer
(
    input clk,
    input resetn,
    input enable,
    input [7:0] ExecType_i, 
    input [7:0] user_define0_i,
    input [7:0] user_define1_i,
    input [7:0] user_define2_i,
    input [7:0] user_define3_i,
    input [7:0] user_define4_i,
    input [7:0] user_define5_i,
    input [7:0] user_define6_i,
    input [7:0] user_define7_i,
    input [7:0] symbol_type_i,
    input [159:0] sym_i,
    input [31:0] price_i,     
    input [15:0] qty_i,  
    input [7:0] side_i,             
    input [7:0] OrdType_i,        
    input [7:0] TimeInForce_i,      
    output reg [7:0] ExecType_o, 
    output reg [7:0] user_define0_o,
    output reg [7:0] user_define1_o,
    output reg [7:0] user_define2_o,
    output reg [7:0] user_define3_o,
    output reg [7:0] user_define4_o,
    output reg [7:0] user_define5_o,
    output reg [7:0] user_define6_o,
    output reg [7:0] user_define7_o,
    output reg [7:0] symbol_type_o,
    output reg [159:0] sym_o,
    output reg [31:0] price_o,     
    output reg [15:0] qty_o,  
    output reg [7:0] side_o,             
    output reg [7:0] OrdType_o,          
    output reg [7:0] TimeInForce_o
);

always @(posedge clk) begin
	if (!resetn) begin
		ExecType_o <= 0;
		user_define0_o <= 0;
		user_define1_o <= 0;
		user_define2_o <= 0;
		user_define3_o <= 0;
		user_define4_o <= 0;
		user_define5_o <= 0;
		user_define6_o <= 0;
		user_define7_o <= 0;
		symbol_type_o <= 0;
		sym_o <= 0;
		price_o <= 0;
		qty_o <= 0;
		side_o <= 0;
		OrdType_o <= 0;
		TimeInForce_o <= 0;
	end
	else if (enable) begin
		ExecType_o <= ExecType_i;
		user_define0_o <= user_define0_i;
		user_define1_o <= user_define1_i;
		user_define2_o <= user_define2_i;
		user_define3_o <= user_define3_i;
		user_define4_o <= user_define4_i;
		user_define5_o <= user_define5_i;
		user_define6_o <= user_define6_i;
		user_define7_o <= user_define7_i;
		symbol_type_o <= symbol_type_i;
		sym_o <= sym_i;
		price_o <= price_i;
		qty_o <= qty_i;
		side_o <= side_i;
		OrdType_o <= OrdType_i;
		TimeInForce_o <= TimeInForce_i;
	end
end

endmodule