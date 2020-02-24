module top_payload_generator
#(
    parameter NUM_PE = 10
)
(
    input clk,
    input resetn,
    input tready,
    input [15:0] session_id,
    input [31:0] MsgSeqNum, 
    input [31:0] epoch_s,
    input [15:0] ms,
    input [15:0] cm_id,
    input [31:0] investor_acno,
    input [7:0] investor_flag,
    input [7:0] order_source,
    input PE_enable_0,
    input [7:0] ExecType_0,
    input [7:0] user_define0_0,
    input [7:0] user_define1_0,
    input [7:0] user_define2_0,
    input [7:0] user_define3_0,
    input [7:0] user_define4_0,
    input [7:0] user_define5_0,
    input [7:0] user_define6_0,
    input [7:0] user_define7_0,
    input [7:0] symbol_type_0,
    input [159:0] sym_0,
    input [31:0] price_0,     
    input [15:0] qty_0,  
    input [7:0] side_0,             
    input [7:0] OrdType_0,          
    input [7:0] TimeInForce_0,      
    input PE_enable_1,
    input [7:0] ExecType_1,
    input [7:0] user_define0_1,
    input [7:0] user_define1_1,
    input [7:0] user_define2_1,
    input [7:0] user_define3_1,
    input [7:0] user_define4_1,
    input [7:0] user_define5_1,
    input [7:0] user_define6_1,
    input [7:0] user_define7_1,
    input [7:0] symbol_type_1,
    input [159:0] sym_1,
    input [31:0] price_1,     
    input [15:0] qty_1,  
    input [7:0] side_1,             
    input [7:0] OrdType_1,          
    input [7:0] TimeInForce_1,      
    input PE_enable_2,
    input [7:0] ExecType_2,
    input [7:0] user_define0_2,
    input [7:0] user_define1_2,
    input [7:0] user_define2_2,
    input [7:0] user_define3_2,
    input [7:0] user_define4_2,
    input [7:0] user_define5_2,
    input [7:0] user_define6_2,
    input [7:0] user_define7_2,
    input [7:0] symbol_type_2,
    input [159:0] sym_2,
    input [31:0] price_2,     
    input [15:0] qty_2,  
    input [7:0] side_2,             
    input [7:0] OrdType_2,          
    input [7:0] TimeInForce_2,      

    input PE_enable_3,
    input [7:0] ExecType_3,
    input [7:0] user_define0_3,
    input [7:0] user_define1_3,
    input [7:0] user_define2_3,
    input [7:0] user_define3_3,
    input [7:0] user_define4_3,
    input [7:0] user_define5_3,
    input [7:0] user_define6_3,
    input [7:0] user_define7_3,
    input [7:0] symbol_type_3,
    input [159:0] sym_3,
    input [31:0] price_3,     
    input [15:0] qty_3,  
    input [7:0] side_3,             
    input [7:0] OrdType_3,          
    input [7:0] TimeInForce_3,      

    input PE_enable_4,
    input [7:0] ExecType_4,
    input [7:0] user_define0_4,
    input [7:0] user_define1_4,
    input [7:0] user_define2_4,
    input [7:0] user_define3_4,
    input [7:0] user_define4_4,
    input [7:0] user_define5_4,
    input [7:0] user_define6_4,
    input [7:0] user_define7_4,
    input [7:0] symbol_type_4,
    input [159:0] sym_4,
    input [31:0] price_4,     
    input [15:0] qty_4,  
    input [7:0] side_4,             
    input [7:0] OrdType_4,          
    input [7:0] TimeInForce_4,      

    input PE_enable_5,
    input [7:0] ExecType_5,
    input [7:0] user_define0_5,
    input [7:0] user_define1_5,
    input [7:0] user_define2_5,
    input [7:0] user_define3_5,
    input [7:0] user_define4_5,
    input [7:0] user_define5_5,
    input [7:0] user_define6_5,
    input [7:0] user_define7_5,
    input [7:0] symbol_type_5,
    input [159:0] sym_5,
    input [31:0] price_5,     
    input [15:0] qty_5,  
    input [7:0] side_5,             
    input [7:0] OrdType_5,          
    input [7:0] TimeInForce_5,      

    input PE_enable_6,
    input [7:0] ExecType_6,
    input [7:0] user_define0_6,
    input [7:0] user_define1_6,
    input [7:0] user_define2_6,
    input [7:0] user_define3_6,
    input [7:0] user_define4_6,
    input [7:0] user_define5_6,
    input [7:0] user_define6_6,
    input [7:0] user_define7_6,
    input [7:0] symbol_type_6,
    input [159:0] sym_6,
    input [31:0] price_6,     
    input [15:0] qty_6,  
    input [7:0] side_6,             
    input [7:0] OrdType_6,          
    input [7:0] TimeInForce_6,      
    input PE_enable_7,

    input [7:0] ExecType_7,
    input [7:0] user_define0_7,
    input [7:0] user_define1_7,
    input [7:0] user_define2_7,
    input [7:0] user_define3_7,
    input [7:0] user_define4_7,
    input [7:0] user_define5_7,
    input [7:0] user_define6_7,
    input [7:0] user_define7_7,
    input [7:0] symbol_type_7,
    input [159:0] sym_7,
    input [31:0] price_7,     
    input [15:0] qty_7,  
    input [7:0] side_7,             
    input [7:0] OrdType_7,          
    input [7:0] TimeInForce_7,      
    input PE_enable_8,
    input [7:0] ExecType_8,
    input [7:0] user_define0_8,
    input [7:0] user_define1_8,
    input [7:0] user_define2_8,
    input [7:0] user_define3_8,
    input [7:0] user_define4_8,
    input [7:0] user_define5_8,
    input [7:0] user_define6_8,
    input [7:0] user_define7_8,
    input [7:0] symbol_type_8,
    input [159:0] sym_8,
    input [31:0] price_8,     
    input [15:0] qty_8,  
    input [7:0] side_8,             
    input [7:0] OrdType_8,          
    input [7:0] TimeInForce_8,      

    input PE_enable_9,
    input [7:0] ExecType_9,
    input [7:0] user_define0_9,
    input [7:0] user_define1_9,
    input [7:0] user_define2_9,
    input [7:0] user_define3_9,
    input [7:0] user_define4_9,
    input [7:0] user_define5_9,
    input [7:0] user_define6_9,
    input [7:0] user_define7_9,
    input [7:0] symbol_type_9,
    input [159:0] sym_9,
    input [31:0] price_9,     
    input [15:0] qty_9,  
    input [7:0] side_9,             
    input [7:0] OrdType_9,          
    input [7:0] TimeInForce_9,      


    output reg [NUM_PE-1:0] PE_acks,
    output tlast,
    output tvalid,
    output [255:0]data, 
    output [31:0]tstrb,
    output [31:0]tkeep

);


wire [NUM_PE-1:0] enables = {PE_enable_9, PE_enable_8, PE_enable_7, PE_enable_6, PE_enable_5,
PE_enable_4, PE_enable_3, PE_enable_2, PE_enable_1, PE_enable_0};
integer i;
reg [31:0] ord_id;

wire [15:0] session_id_o [0:NUM_PE-1];
wire [7:0] ExecType_o [0:NUM_PE-1];
wire [7:0] user_define0_o [0:NUM_PE-1];
wire [7:0] user_define1_o [0:NUM_PE-1];
wire [7:0] user_define2_o [0:NUM_PE-1];
wire [7:0] user_define3_o [0:NUM_PE-1];
wire [7:0] user_define4_o [0:NUM_PE-1];
wire [7:0] user_define5_o [0:NUM_PE-1];
wire [7:0] user_define6_o [0:NUM_PE-1];
wire [7:0] user_define7_o [0:NUM_PE-1];
wire [7:0] symbol_type_o [0:NUM_PE-1];
wire [7:0] order_no0_o[0:NUM_PE-1];
wire [7:0] order_no1_o[0:NUM_PE-1];
wire [7:0] order_no2_o[0:NUM_PE-1];
wire [7:0] order_no3_o[0:NUM_PE-1];
wire [7:0] order_no4_o[0:NUM_PE-1];
wire [31:0] ord_id_o [0:NUM_PE-1];
wire [7:0] OrdType_o [0:NUM_PE-1];
wire [159:0] sym_o [0:NUM_PE-1];
wire [31:0] price_o [0:NUM_PE-1];     
wire [15:0] qty_o [0:NUM_PE-1];  
wire [7:0] side_o [0:NUM_PE-1];             
wire [7:0] TimeInForce_o [0:NUM_PE-1];      

wire [7:0] order_no_0;
wire [7:0] order_no_1;
wire [7:0] order_no_2;
wire [7:0] order_no_3;
wire [7:0] order_no_4;
wire [7:0] current;

payload_arbiter #(.NUM_PE(NUM_PE)) payload_arbiter0
(
    .clk(clk),
    .rst_n(resetn),
    .enables(enables),
    .last(tlast),
    .current(current),
    .enable_arbiter(enable_arbiter)
);

always @* begin
    for (i=0; i<NUM_PE; i=i+1) begin
        PE_acks[i] = i == current && enable_arbiter; 
    end

end

order_no_counter order_no_counter0
(
    .clk(clk),
    .rst_n(resetn),
    .enable(enable_arbiter),
    .order_no_0(order_no_0),
    .order_no_1(order_no_1),
    .order_no_2(order_no_2),
    .order_no_3(order_no_3),
    .order_no_4(order_no_4)
);

always @(posedge clk) begin
    if (!resetn) begin
        ord_id <= 0;
    end
    else if (enable_arbiter) begin
        if (ord_id != 9999999)
            ord_id <= ord_id + 1;
        else
            ord_id <= 0;
    end
    else begin
        ord_id <= ord_id;
    end
end

reg [7:0]  c_ExecType;
reg [7:0]  c_user_define0;
reg [7:0]  c_user_define1;
reg [7:0]  c_user_define2;
reg [7:0]  c_user_define3;
reg [7:0]  c_user_define4;
reg [7:0]  c_user_define5;
reg [7:0]  c_user_define6;
reg [7:0]  c_user_define7;
reg [7:0]  c_symbol_type;
reg [159:0]c_sym;
reg [31:0] c_price;     
reg [15:0] c_qty;  
reg [7:0]  c_side;             
reg [7:0]  c_OrdType;          
reg [7:0]  c_TimeInForce;

always @* begin
    c_ExecType = ExecType_o[current];
    c_user_define0 = user_define0_o[current];
    c_user_define1 = user_define1_o[current];
    c_user_define2 = user_define2_o[current];
    c_user_define3 = user_define3_o[current];
    c_user_define4 = user_define4_o[current];
    c_user_define5 = user_define5_o[current];
    c_user_define6 = user_define6_o[current];
    c_user_define7 = user_define7_o[current];
    c_symbol_type = symbol_type_o[current];
    c_sym = sym_o[current];
    c_price = price_o[current];
    c_qty = qty_o[current];
    c_side = side_o[current];
    c_OrdType = OrdType_o[current];
    c_TimeInForce = TimeInForce_o[current];
end

payload payload0(
    .cm_id(cm_id),
    .investor_acno(investor_acno),
    .investor_flag(investor_flag),
    .order_source(order_source),
    .clk(clk),
    .resetn(resetn),
    .enable(enable_arbiter),
    .tready(tready),
    .MsgSeqNum(MsgSeqNum), 
    .epoch_s(epoch_s),
    .ms(ms),
    .session_id(session_id),
    .ExecType(c_ExecType),
    .order_no0(order_no_0),
    .order_no1(order_no_1),
    .order_no2(order_no_2),
    .order_no3(order_no_3),
    .order_no4(order_no_4),
    .ord_id(ord_id),
    .user_define0(c_user_define0),
    .user_define1(c_user_define1),
    .user_define2(c_user_define2),
    .user_define3(c_user_define3),
    .user_define4(c_user_define4),
    .user_define5(c_user_define5),
    .user_define6(c_user_define6),
    .user_define7(c_user_define7),
    .symbol_type(c_symbol_type),
    .sym(c_sym),
    .price(c_price),     
    .qty(c_qty),  
    .side(c_side),             
    .OrdType(c_OrdType),          
    .TimeInForce(c_TimeInForce),      
    .cnt(cnt),
    .tlast(tlast),
    .tvalid(tvalid),
    .data(data), 
    .tstrb(tstrb),
    .tkeep(tkeep)
);

buffer buffer0
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_0),
    .ExecType_i(ExecType_0), 
    .user_define0_i(user_define0_0),
    .user_define1_i(user_define1_0),
    .user_define2_i(user_define2_0),
    .user_define3_i(user_define3_0),
    .user_define4_i(user_define4_0),
    .user_define5_i(user_define5_0),
    .user_define6_i(user_define6_0),
    .user_define7_i(user_define7_0),
    .symbol_type_i(symbol_type_0),
    .sym_i(sym_0),
    .price_i(price_0),     
    .qty_i(qty_0),  
    .side_i(side_0),             
    .OrdType_i(OrdType_0),          
    .TimeInForce_i(TimeInForce_0),      
    .ExecType_o(ExecType_o[0]), 
    .user_define0_o(user_define0_o[0]),
    .user_define1_o(user_define1_o[0]),
    .user_define2_o(user_define2_o[0]),
    .user_define3_o(user_define3_o[0]),
    .user_define4_o(user_define4_o[0]),
    .user_define5_o(user_define5_o[0]),
    .user_define6_o(user_define6_o[0]),
    .user_define7_o(user_define7_o[0]),
    .symbol_type_o(symbol_type_o[0]),
    .sym_o(sym_o[0]),
    .price_o(price_o[0]),     
    .qty_o(qty_o[0]),  
    .side_o(side_o[0]),             
    .OrdType_o(OrdType_o[0]),          
    .TimeInForce_o(TimeInForce_o[0]) 
);


buffer buffer1
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_1),
    .ExecType_i(ExecType_1), 
    .user_define0_i(user_define0_1),
    .user_define1_i(user_define1_1),
    .user_define2_i(user_define2_1),
    .user_define3_i(user_define3_1),
    .user_define4_i(user_define4_1),
    .user_define5_i(user_define5_1),
    .user_define6_i(user_define6_1),
    .user_define7_i(user_define7_1),
    .symbol_type_i(symbol_type_1),
    .sym_i(sym_1),
    .price_i(price_1),     
    .qty_i(qty_1),  
    .side_i(side_1),             
    .OrdType_i(OrdType_1),          
    .TimeInForce_i(TimeInForce_1),      
    .ExecType_o(ExecType_o[1]), 
    .user_define0_o(user_define0_o[1]),
    .user_define1_o(user_define1_o[1]),
    .user_define2_o(user_define2_o[1]),
    .user_define3_o(user_define3_o[1]),
    .user_define4_o(user_define4_o[1]),
    .user_define5_o(user_define5_o[1]),
    .user_define6_o(user_define6_o[1]),
    .user_define7_o(user_define7_o[1]),
    .symbol_type_o(symbol_type_o[1]),
    .sym_o(sym_o[1]),
    .price_o(price_o[1]),     
    .qty_o(qty_o[1]),  
    .side_o(side_o[1]),             
    .OrdType_o(OrdType_o[1]),          
    .TimeInForce_o(TimeInForce_o[1])  
);


buffer buffer2
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_2),
    .ExecType_i(ExecType_2), 
    .user_define0_i(user_define0_2),
    .user_define1_i(user_define1_2),
    .user_define2_i(user_define2_2),
    .user_define3_i(user_define3_2),
    .user_define4_i(user_define4_2),
    .user_define5_i(user_define5_2),
    .user_define6_i(user_define6_2),
    .user_define7_i(user_define7_2),
    .symbol_type_i(symbol_type_2),
    .sym_i(sym_2),
    .price_i(price_2),     
    .qty_i(qty_2),  
    .side_i(side_2),             
    .OrdType_i(OrdType_2),          
    .TimeInForce_i(TimeInForce_2),      
    .ExecType_o(ExecType_o[2]), 
    .user_define0_o(user_define0_o[2]),
    .user_define1_o(user_define1_o[2]),
    .user_define2_o(user_define2_o[2]),
    .user_define3_o(user_define3_o[2]),
    .user_define4_o(user_define4_o[2]),
    .user_define5_o(user_define5_o[2]),
    .user_define6_o(user_define6_o[2]),
    .user_define7_o(user_define7_o[2]),
    .symbol_type_o(symbol_type_o[2]),
    .sym_o(sym_o[2]),
    .price_o(price_o[2]),     
    .qty_o(qty_o[2]),  
    .side_o(side_o[2]),             
    .OrdType_o(OrdType_o[2]),          
    .TimeInForce_o(TimeInForce_o[2])
);


buffer buffer3
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_3),
    .ExecType_i(ExecType_3), 
    .user_define0_i(user_define0_3),
    .user_define1_i(user_define1_3),
    .user_define2_i(user_define2_3),
    .user_define3_i(user_define3_3),
    .user_define4_i(user_define4_3),
    .user_define5_i(user_define5_3),
    .user_define6_i(user_define6_3),
    .user_define7_i(user_define7_3),
    .symbol_type_i(symbol_type_3),
    .sym_i(sym_3),
    .price_i(price_3),     
    .qty_i(qty_3),  
    .side_i(side_3),             
    .OrdType_i(OrdType_3),          
    .TimeInForce_i(TimeInForce_3),      
    .ExecType_o(ExecType_o[3]), 
    .user_define0_o(user_define0_o[3]),
    .user_define1_o(user_define1_o[3]),
    .user_define2_o(user_define2_o[3]),
    .user_define3_o(user_define3_o[3]),
    .user_define4_o(user_define4_o[3]),
    .user_define5_o(user_define5_o[3]),
    .user_define6_o(user_define6_o[3]),
    .user_define7_o(user_define7_o[3]),
    .symbol_type_o(symbol_type_o[3]),
    .sym_o(sym_o[3]),
    .price_o(price_o[3]),     
    .qty_o(qty_o[3]),  
    .side_o(side_o[3]),             
    .OrdType_o(OrdType_o[3]),          
    .TimeInForce_o(TimeInForce_o[3])
);


buffer buffer4
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_4),
    .ExecType_i(ExecType_4), 
    .user_define0_i(user_define0_4),
    .user_define1_i(user_define1_4),
    .user_define2_i(user_define2_4),
    .user_define3_i(user_define3_4),
    .user_define4_i(user_define4_4),
    .user_define5_i(user_define5_4),
    .user_define6_i(user_define6_4),
    .user_define7_i(user_define7_4),
    .symbol_type_i(symbol_type_4),
    .sym_i(sym_4),
    .price_i(price_4),     
    .qty_i(qty_4),  
    .side_i(side_4),             
    .OrdType_i(OrdType_4),          
    .TimeInForce_i(TimeInForce_4),      
    .ExecType_o(ExecType_o[4]), 
    .user_define0_o(user_define0_o[4]),
    .user_define1_o(user_define1_o[4]),
    .user_define2_o(user_define2_o[4]),
    .user_define3_o(user_define3_o[4]),
    .user_define4_o(user_define4_o[4]),
    .user_define5_o(user_define5_o[4]),
    .user_define6_o(user_define6_o[4]),
    .user_define7_o(user_define7_o[4]),
    .symbol_type_o(symbol_type_o[4]),
    .sym_o(sym_o[4]),
    .price_o(price_o[4]),     
    .qty_o(qty_o[4]),  
    .side_o(side_o[4]),             
    .OrdType_o(OrdType_o[4]),          
    .TimeInForce_o(TimeInForce_o[4])
);

buffer buffer5
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_5),
    .ExecType_i(ExecType_5), 
    .user_define0_i(user_define0_5),
    .user_define1_i(user_define1_5),
    .user_define2_i(user_define2_5),
    .user_define3_i(user_define3_5),
    .user_define4_i(user_define4_5),
    .user_define5_i(user_define5_5),
    .user_define6_i(user_define6_5),
    .user_define7_i(user_define7_5),
    .symbol_type_i(symbol_type_5),
    .sym_i(sym_5),
    .price_i(price_5),     
    .qty_i(qty_5),  
    .side_i(side_5),             
    .OrdType_i(OrdType_5),          
    .TimeInForce_i(TimeInForce_5),      
    .ExecType_o(ExecType_o[5]), 
    .user_define0_o(user_define0_o[5]),
    .user_define1_o(user_define1_o[5]),
    .user_define2_o(user_define2_o[5]),
    .user_define3_o(user_define3_o[5]),
    .user_define4_o(user_define4_o[5]),
    .user_define5_o(user_define5_o[5]),
    .user_define6_o(user_define6_o[5]),
    .user_define7_o(user_define7_o[5]),
    .symbol_type_o(symbol_type_o[5]),
    .sym_o(sym_o[5]),
    .price_o(price_o[5]),     
    .qty_o(qty_o[5]),  
    .side_o(side_o[5]),             
    .OrdType_o(OrdType_o[5]),          
    .TimeInForce_o(TimeInForce_o[5])
);

buffer buffer6
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_6),
    .ExecType_i(ExecType_6), 
    .user_define0_i(user_define0_6),
    .user_define1_i(user_define1_6),
    .user_define2_i(user_define2_6),
    .user_define3_i(user_define3_6),
    .user_define4_i(user_define4_6),
    .user_define5_i(user_define5_6),
    .user_define6_i(user_define6_6),
    .user_define7_i(user_define7_6),
    .symbol_type_i(symbol_type_6),
    .sym_i(sym_6),
    .price_i(price_6),     
    .qty_i(qty_6),  
    .side_i(side_6),             
    .OrdType_i(OrdType_6),          
    .TimeInForce_i(TimeInForce_6),      
    .ExecType_o(ExecType_o[6]), 
    .user_define0_o(user_define0_o[6]),
    .user_define1_o(user_define1_o[6]),
    .user_define2_o(user_define2_o[6]),
    .user_define3_o(user_define3_o[6]),
    .user_define4_o(user_define4_o[6]),
    .user_define5_o(user_define5_o[6]),
    .user_define6_o(user_define6_o[6]),
    .user_define7_o(user_define7_o[6]),
    .symbol_type_o(symbol_type_o[6]),
    .sym_o(sym_o[6]),
    .price_o(price_o[6]),     
    .qty_o(qty_o[6]),  
    .side_o(side_o[6]),             
    .OrdType_o(OrdType_o[6]),          
    .TimeInForce_o(TimeInForce_o[6])
);

buffer buffer7
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_7),
    .ExecType_i(ExecType_7), 
    .user_define0_i(user_define0_7),
    .user_define1_i(user_define1_7),
    .user_define2_i(user_define2_7),
    .user_define3_i(user_define3_7),
    .user_define4_i(user_define4_7),
    .user_define5_i(user_define5_7),
    .user_define6_i(user_define6_7),
    .user_define7_i(user_define7_7),
    .symbol_type_i(symbol_type_7),
    .sym_i(sym_7),
    .price_i(price_7),     
    .qty_i(qty_7),  
    .side_i(side_7),             
    .OrdType_i(OrdType_7),          
    .TimeInForce_i(TimeInForce_7),      
    .ExecType_o(ExecType_o[7]), 
    .user_define0_o(user_define0_o[7]),
    .user_define1_o(user_define1_o[7]),
    .user_define2_o(user_define2_o[7]),
    .user_define3_o(user_define3_o[7]),
    .user_define4_o(user_define4_o[7]),
    .user_define5_o(user_define5_o[7]),
    .user_define6_o(user_define6_o[7]),
    .user_define7_o(user_define7_o[7]),
    .symbol_type_o(symbol_type_o[7]),
    .sym_o(sym_o[7]),
    .price_o(price_o[7]),     
    .qty_o(qty_o[7]),  
    .side_o(side_o[7]),             
    .OrdType_o(OrdType_o[7]),          
    .TimeInForce_o(TimeInForce_o[7])
);

buffer buffer8
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_8),
    .ExecType_i(ExecType_8), 
    .user_define0_i(user_define0_8),
    .user_define1_i(user_define1_8),
    .user_define2_i(user_define2_8),
    .user_define3_i(user_define3_8),
    .user_define4_i(user_define4_8),
    .user_define5_i(user_define5_8),
    .user_define6_i(user_define6_8),
    .user_define7_i(user_define7_8),
    .symbol_type_i(symbol_type_8),
    .sym_i(sym_8),
    .price_i(price_8),     
    .qty_i(qty_8),  
    .side_i(side_8),             
    .OrdType_i(OrdType_8),          
    .TimeInForce_i(TimeInForce_8),      
    .ExecType_o(ExecType_o[8]), 
    .user_define0_o(user_define0_o[8]),
    .user_define1_o(user_define1_o[8]),
    .user_define2_o(user_define2_o[8]),
    .user_define3_o(user_define3_o[8]),
    .user_define4_o(user_define4_o[8]),
    .user_define5_o(user_define5_o[8]),
    .user_define6_o(user_define6_o[8]),
    .user_define7_o(user_define7_o[8]),
    .symbol_type_o(symbol_type_o[8]),
    .sym_o(sym_o[8]),
    .price_o(price_o[8]),     
    .qty_o(qty_o[8]),  
    .side_o(side_o[8]),             
    .OrdType_o(OrdType_o[8]),          
    .TimeInForce_o(TimeInForce_o[8])
);

buffer buffer9
(
    .clk(clk),
    .resetn(resetn),
    .enable(PE_enable_9),
    .ExecType_i(ExecType_9), 
    .user_define0_i(user_define0_9),
    .user_define1_i(user_define1_9),
    .user_define2_i(user_define2_9),
    .user_define3_i(user_define3_9),
    .user_define4_i(user_define4_9),
    .user_define5_i(user_define5_9),
    .user_define6_i(user_define6_9),
    .user_define7_i(user_define7_9),
    .symbol_type_i(symbol_type_9),
    .sym_i(sym_9),
    .price_i(price_9),     
    .qty_i(qty_9),  
    .side_i(side_9),             
    .OrdType_i(OrdType_9),          
    .TimeInForce_i(TimeInForce_9),      
    .ExecType_o(ExecType_o[9]), 
    .user_define0_o(user_define0_o[9]),
    .user_define1_o(user_define1_o[9]),
    .user_define2_o(user_define2_o[9]),
    .user_define3_o(user_define3_o[9]),
    .user_define4_o(user_define4_o[9]),
    .user_define5_o(user_define5_o[9]),
    .user_define6_o(user_define6_o[9]),
    .user_define7_o(user_define7_o[9]),
    .symbol_type_o(symbol_type_o[9]),
    .sym_o(sym_o[9]),
    .price_o(price_o[9]),     
    .qty_o(qty_o[9]),  
    .side_o(side_o[9]),             
    .OrdType_o(OrdType_o[9]),          
    .TimeInForce_o(TimeInForce_o[9])
);

endmodule