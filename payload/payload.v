module payload(

    input clk,
    input resetn,
    input enable,
    input tready,
    input [31:0] MsgSeqNum, 
    input [31:0] epoch_s,
    input [15:0] ms,
    input [15:0] session_id,
    input [15:0] cm_id,
    input [7:0] ExecType,
    input [7:0] order_no0,
    input [7:0] order_no1,
    input [7:0] order_no2,
    input [7:0] order_no3,
    input [7:0] order_no4,
    input [31:0] ord_id,
    input [7:0] user_define0,
    input [7:0] user_define1,
    input [7:0] user_define2,
    input [7:0] user_define3,
    input [7:0] user_define4,
    input [7:0] user_define5,
    input [7:0] user_define6,
    input [7:0] user_define7,
    input [7:0] symbol_type,
    input [159:0] sym,
    input [31:0] price,     
    input [15:0] qty,  
    input [31:0] investor_acno,   
    input [7:0] investor_flag,    
    input [7:0] side,             
    input [7:0] OrdType,          
    input [7:0] TimeInForce,      
    //input [7:0] PositionEffect,
    input [7:0] order_source,

    output reg [2:0] cnt,
    output reg tlast,
    output reg tvalid,
    output reg [255:0]data, 
    output reg [31:0]tstrb,
    output reg [31:0]tkeep
);


wire [15:0] msg_length;  
wire [7:0] MessageType;
wire [15:0] hdr_fcm_id;
wire [15:0] fcm_id;
//wire [15:0] cm_id;
//wire [31:0] investor_acno;
//wire [7:0] investor_flag;
wire [7:0] info_source2;
wire [7:0] info_source1;
wire [7:0] info_source0;
//wire [7:0] order_source;
wire [7:0] PositionEffect;

/*
reg [159:0] symbol_num;
reg [15:0] pseq1;
reg [15:0] pseq2;
reg [7:0] leg_side [1:0];
reg [7:0] comb_up;
reg [7:0] filler [12:0];
reg [7:0] symbol_text [19:0];
*/
reg [15:0] checksum;
reg [15:0] checksum_temp0;
reg [15:0] checksum_temp1;
reg [15:0] checksum_temp2;
reg [15:0] checksum_temp3;
reg [15:0] checksum_temp4;
reg [15:0] checksum_temp5;
reg [15:0] checksum_temp6;
reg [15:0] checksum_temp7;


reg [639:0] content;

assign msg_length = 16'd77;
assign MessageType = 8'd101;
assign info_source2 = 8'd57;
assign info_source1 = 8'd57;
assign info_source0 = 8'd57;
assign PositionEffect = 8'd79;
assign hdr_fcm_id = 16'd237;
assign fcm_id = 16'd237;
//assign cm_id = 16'd237;
//assign investor_flag = 8'd2;
//assign investor_acno = 32'd0;

always @(posedge clk) begin 
    if(~resetn) 
    begin
        content <= 640'd0;
    end 
    else if (enable)
    begin
        content[7:0] <= msg_length[15:8];
        content[15:8] <= msg_length[7:0];
        content[47:16] <= MsgSeqNum;
        content[79:48] <= epoch_s;
        content[95:80] <= ms;
        content[103:96] <= MessageType;
        content[119:104] <= hdr_fcm_id;
        content[135:120] <= session_id;
        content[143:136] <= ExecType;
        content[159:144] <= cm_id;        
        content[175:160] <= fcm_id;
        content[183:176] <= order_no4;
        content[191:184] <= order_no3;
        content[199:192] <= order_no2;
        content[207:200] <= order_no1;
        content[215:208] <= order_no0;
        content[247:216] <= ord_id;
        content[255:248] <= user_define7;
        content[263:256] <= user_define6;
        content[271:264] <= user_define5;
        content[279:272] <= user_define4;
        content[287:280] <= user_define3;
        content[295:288] <= user_define2;
        content[303:296] <= user_define1;
        content[311:304] <= user_define0;
        content[319:312] <= symbol_type;
        content[479:320] <= sym;
        content[511:480] <= price;
        content[527:512] <= qty;
        content[559:528] <= investor_acno;
        content[567:560] <= investor_flag;
        content[575:568] <= side;
        content[583:576] <= OrdType;
        content[591:584] <= TimeInForce;
        content[599:592] <= PositionEffect;
        content[607:600] <= order_source;
        content[615:608] <= info_source2;
        content[623:616] <= info_source1;
        content[631:624] <= info_source0;
        //content[639:632] <= checksum[7:0];
    end
    else
    begin 
        content <= content;
    end
end

always @(posedge clk) 
begin 
    if(~resetn) 
    begin
        cnt <= 0;
        data <= 256'd0;
        tvalid <= 0;
        tlast <= 0;
        tstrb <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        tkeep <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        checksum_temp0 <= 16'd0;
        checksum_temp1 <= 16'd0;
        checksum_temp2 <= 16'd0;
        checksum_temp3 <= 16'd0;
        checksum_temp4 <= 16'd0;
        checksum_temp5 <= 16'd0;
        checksum_temp6 <= 16'd0;
        checksum_temp7 <= 16'd0;
        checksum <= 16'd0;
    end 
    else if (enable)
    begin
        cnt <= 1;
        data <= 256'd0;
        tvalid <= 0;
        tlast <= 0;
        tstrb <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        tkeep <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        checksum_temp0 <= msg_length[7:0] + msg_length[15:8] + MsgSeqNum[7:0] + MsgSeqNum[15:8] + MsgSeqNum[23:16] + MsgSeqNum[31:24] + epoch_s[7:0] + epoch_s[15:8] + epoch_s[23:16] + epoch_s[31:24];
        checksum_temp1 <= ms[7:0] + ms[15:8] + MessageType + hdr_fcm_id[7:0] + hdr_fcm_id[15:8] + session_id[7:0] + session_id[15:8] + cm_id[7:0] + cm_id[15:8] + ExecType;
        checksum_temp2 <= fcm_id[7:0] + fcm_id[15:8] + order_no4 + order_no3 + order_no2 + order_no1 + order_no0 + ord_id[7:0] + ord_id[15:8] + ord_id[23:16] + ord_id[31:24];
        checksum_temp3 <= user_define7 + user_define6 + user_define5 + user_define4 + user_define3 + user_define2 + user_define1 + user_define0 + symbol_type;
        checksum_temp4 <= sym[7:0] + sym[15:8] + sym[23:16] + sym[31:24] + sym[39:32] + sym[47:40] + sym[55:48] + sym[63:56] + sym[71:64] + sym[79:72];
        checksum_temp5 <= sym[87:80] + sym[95:88] + sym[103:96] + sym[111:104] + sym[119:112] + sym[127:120] + sym[135:128] + sym[143:136] + sym[151:144] + sym[159:152];
        checksum_temp6 <= price[7:0] + price[15:8] + price[23:16] + price[31:24] + qty[7:0] + qty[15:8] + investor_acno[7:0] + investor_acno[15:8] + investor_acno[23:16] + investor_acno[31:24];
        checksum_temp7 <= investor_flag + side + OrdType + TimeInForce + PositionEffect + order_source + info_source2 + info_source1 + info_source0;
        checksum <= checksum;
    end
    else if (cnt == 1)
    begin
        cnt <= 2;
        data <= content[255:0];
        tvalid <= 1;
        tlast <= 0;
        tstrb <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
        tkeep <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
        checksum_temp0 <= checksum_temp0;
        checksum_temp1 <= checksum_temp1;
        checksum_temp2 <= checksum_temp2;
        checksum_temp3 <= checksum_temp3;
        checksum_temp4 <= checksum_temp4;
        checksum_temp5 <= checksum_temp5;
        checksum_temp6 <= checksum_temp6;
        checksum_temp7 <= checksum_temp7;
        checksum <= checksum_temp0 + checksum_temp1 + checksum_temp2 + checksum_temp3 + checksum_temp4 + checksum_temp5 + checksum_temp6 + checksum_temp7;
    end
    else if (cnt == 2)
    begin
        cnt <= 3;
        data <= content[511:256];
        tvalid <= 1;
        tlast <= 0;
        tstrb <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
        tkeep <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
        checksum_temp0 <= checksum_temp0;
        checksum_temp1 <= checksum_temp1;
        checksum_temp2 <= checksum_temp2;
        checksum_temp3 <= checksum_temp3;
        checksum_temp4 <= checksum_temp4;
        checksum_temp5 <= checksum_temp5;
        checksum_temp6 <= checksum_temp6;
        checksum_temp7 <= checksum_temp7;
        checksum <= checksum;
    end
    else if (cnt == 3)
    begin
        cnt <= 4;
        data[119:0] <= content[631:512];
        data[127:120] <= checksum[7:0];
        data[255:128] <= 128'd0;
        tvalid <= 1; 
        tlast <= 1;
        tstrb <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
        tkeep <= 32'b1111_1111_1111_1111_1111_1111_1111_1111;
        checksum_temp0 <= checksum_temp0;
        checksum_temp1 <= checksum_temp1;
        checksum_temp2 <= checksum_temp2;
        checksum_temp3 <= checksum_temp3;
        checksum_temp4 <= checksum_temp4;
        checksum_temp5 <= checksum_temp5;
        checksum_temp6 <= checksum_temp6;
        checksum_temp7 <= checksum_temp7;
        checksum <= checksum;
    end
    else if (cnt == 4)
    begin
        cnt <= 0;
        data <= 256'd0;
        tvalid <= 0;
        tlast <= 0;
        tstrb <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        tkeep <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        checksum_temp0 <= 16'd0;
        checksum_temp1 <= 16'd0;
        checksum_temp2 <= 16'd0;
        checksum_temp3 <= 16'd0;
        checksum_temp4 <= 16'd0;
        checksum_temp5 <= 16'd0;
        checksum_temp6 <= 16'd0;
        checksum_temp7 <= 16'd0;
        checksum <= 16'd0;
    end
    else
    begin
        cnt <= 0;
        data <= data;
        tvalid <= 0;
        tlast <= 0;
        tstrb <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        tkeep <= 32'b0000_0000_0000_0000_0000_0000_0000_0000;
        checksum_temp0 <= 16'd0;
        checksum_temp1 <= 16'd0;
        checksum_temp2 <= 16'd0;
        checksum_temp3 <= 16'd0;
        checksum_temp4 <= 16'd0;
        checksum_temp5 <= 16'd0;
        checksum_temp6 <= 16'd0;
        checksum_temp7 <= 16'd0;
        checksum <= 16'd0;
    end
end









endmodule 
