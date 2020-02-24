module test_payload_generator;

parameter CYCLE = 10, NUM_PE=10;

// create clk
reg clk;
reg resetn;
reg [15:0] session_id;
reg [31:0] MsgSeqNum; 
reg [31:0] epoch_s;
reg [15:0] ms; 
reg PE_enable_0;
reg [7:0] ExecType_0;
reg [7:0] user_define0_0;
reg [7:0] user_define1_0;
reg [7:0] user_define2_0;
reg [7:0] user_define3_0;
reg [7:0] user_define4_0;
reg [7:0] user_define5_0;
reg [7:0] user_define6_0;
reg [7:0] user_define7_0;
reg [7:0] symbol_type_0;
reg [159:0] sym_0;
reg [31:0] price_0;     
reg [15:0] qty_0;  
reg [7:0] side_0;             
reg [7:0] OrdType_0;          
reg [7:0] TimeInForce_0;
reg PE_enable_1;
reg [7:0] ExecType_1;
reg [7:0] user_define0_1;
reg [7:0] user_define1_1;
reg [7:0] user_define2_1;
reg [7:0] user_define3_1;
reg [7:0] user_define4_1;
reg [7:0] user_define5_1;
reg [7:0] user_define6_1;
reg [7:0] user_define7_1;
reg [7:0] symbol_type_1;
reg [159:0] sym_1;
reg [31:0] price_1;     
reg [15:0] qty_1;  
reg [7:0] side_1;             
reg [7:0] OrdType_1;          
reg [7:0] TimeInForce_1;

reg PE_enable_2;
reg [7:0] ExecType_2;
reg [7:0] user_define0_2;
reg [7:0] user_define1_2;
reg [7:0] user_define2_2;
reg [7:0] user_define3_2;
reg [7:0] user_define4_2;
reg [7:0] user_define5_2;
reg [7:0] user_define6_2;
reg [7:0] user_define7_2;
reg [7:0] symbol_type_2;
reg [159:0] sym_2;
reg [31:0] price_2;     
reg [15:0] qty_2;  
reg [7:0] side_2;             
reg [7:0] OrdType_2;          
reg [7:0] TimeInForce_2;

reg PE_enable_3;
reg [7:0] ExecType_3;
reg [7:0] user_define0_3;
reg [7:0] user_define1_3;
reg [7:0] user_define2_3;
reg [7:0] user_define3_3;
reg [7:0] user_define4_3;
reg [7:0] user_define5_3;
reg [7:0] user_define6_3;
reg [7:0] user_define7_3;
reg [7:0] symbol_type_3;
reg [159:0] sym_3;
reg [31:0] price_3;     
reg [15:0] qty_3;  
reg [7:0] side_3;             
reg [7:0] OrdType_3;          
reg [7:0] TimeInForce_3;
reg PE_enable_4;
reg [7:0] ExecType_4;
reg [7:0] user_define0_4;
reg [7:0] user_define1_4;
reg [7:0] user_define2_4;
reg [7:0] user_define3_4;
reg [7:0] user_define4_4;
reg [7:0] user_define5_4;
reg [7:0] user_define6_4;
reg [7:0] user_define7_4;
reg [7:0] symbol_type_4;
reg [159:0] sym_4;
reg [31:0] price_4;     
reg [15:0] qty_4;  
reg [7:0] side_4;             
reg [7:0] OrdType_4;          
reg [7:0] TimeInForce_4;

reg PE_enable_5;
reg [7:0] ExecType_5;
reg [7:0] user_define0_5;
reg [7:0] user_define1_5;
reg [7:0] user_define2_5;
reg [7:0] user_define3_5;
reg [7:0] user_define4_5;
reg [7:0] user_define5_5;
reg [7:0] user_define6_5;
reg [7:0] user_define7_5;
reg [7:0] symbol_type_5;
reg [159:0] sym_5;
reg [31:0] price_5;     
reg [15:0] qty_5;  
reg [7:0] side_5;             
reg [7:0] OrdType_5;          
reg [7:0] TimeInForce_5;    

reg PE_enable_6;
reg [7:0] ExecType_6;
reg [7:0] user_define0_6;
reg [7:0] user_define1_6;
reg [7:0] user_define2_6;
reg [7:0] user_define3_6;
reg [7:0] user_define4_6;
reg [7:0] user_define5_6;
reg [7:0] user_define6_6;
reg [7:0] user_define7_6;
reg [7:0] symbol_type_6;
reg [159:0] sym_6;
reg [31:0] price_6;     
reg [15:0] qty_6;  
reg [7:0] side_6;             
reg [7:0] OrdType_6;          
reg [7:0] TimeInForce_6;    
reg PE_enable_7;

reg [7:0] ExecType_7;
reg [7:0] user_define0_7;
reg [7:0] user_define1_7;
reg [7:0] user_define2_7;
reg [7:0] user_define3_7;
reg [7:0] user_define4_7;
reg [7:0] user_define5_7;
reg [7:0] user_define6_7;
reg [7:0] user_define7_7;
reg [7:0] symbol_type_7;
reg [159:0] sym_7;
reg [31:0] price_7;     
reg [15:0] qty_7;  
reg [7:0] side_7;             
reg [7:0] OrdType_7;          
reg [7:0] TimeInForce_7;    
reg PE_enable_8;

reg [7:0] ExecType_8;
reg [7:0] user_define0_8;
reg [7:0] user_define1_8;
reg [7:0] user_define2_8;
reg [7:0] user_define3_8;
reg [7:0] user_define4_8;
reg [7:0] user_define5_8;
reg [7:0] user_define6_8;
reg [7:0] user_define7_8;
reg [7:0] symbol_type_8;
reg [159:0] sym_8;
reg [31:0] price_8;     
reg [15:0] qty_8;  
reg [7:0] side_8;             
reg [7:0] OrdType_8;          
reg [7:0] TimeInForce_8;    
reg PE_enable_9;
reg [7:0] ExecType_9;
reg [7:0] user_define0_9;
reg [7:0] user_define1_9;
reg [7:0] user_define2_9;
reg [7:0] user_define3_9;
reg [7:0] user_define4_9;
reg [7:0] user_define5_9;
reg [7:0] user_define6_9;
reg [7:0] user_define7_9;
reg [7:0] symbol_type_9;
reg [159:0] sym_9;
reg [31:0] price_9;     
reg [15:0] qty_9;  
reg [7:0] side_9;             
reg [7:0] OrdType_9;          
reg [7:0] TimeInForce_9;wire [NUM_PE-1:0] PE_acks;
wire tready;
wire tlast;
wire tvalid;
wire [255:0]data; 
wire [31:0]tstrb;
wire [31:0]tkeep;

always @(posedge clk) begin
    if (tlast) begin
        $display("%h", top_payload_generator0.payload0.content);
        $display("--------------------");
    end
end

top_payload_generator #(.NUM_PE(NUM_PE)) top_payload_generator0
(


    .cm_id(16'h00ed),
    .investor_acno(32'h0),
    .investor_flag(8'h32),
    .order_source(8'h47),
    .clk(clk),
    .resetn(resetn),
    .tready(tready),
    .session_id(16'h00df),
    .MsgSeqNum(32'h0b23), 
    .epoch_s(32'h5e4c9098),
    .ms(16'h0096),

    .PE_enable_0(PE_enable_0),
    .ExecType_0(ExecType_0),
    .user_define0_0(user_define0_0),
    .user_define1_0(user_define1_0),
    .user_define2_0(user_define2_0),
    .user_define3_0(user_define3_0),
    .user_define4_0(user_define4_0),
    .user_define5_0(user_define5_0),
    .user_define6_0(user_define6_0),
    .user_define7_0(user_define7_0),
    .symbol_type_0(symbol_type_0),
    .sym_0(sym_0),
    .price_0(price_0),     
    .qty_0(qty_0),  
    .side_0(side_0),             
    .OrdType_0(OrdType_0),          
    .TimeInForce_0(TimeInForce_0),    .PE_enable_1(PE_enable_1),
    .ExecType_1(8'h4d),
    .user_define0_1(8'h30),
    .user_define1_1(8'h31),
    .user_define2_1(8'h32),
    .user_define3_1(8'h30),
    .user_define4_1(8'h2f),
    .user_define5_1(8'h0),
    .user_define6_1(8'h0),
    .user_define7_1(8'h0),
    .symbol_type_1(8'h02),
    .sym_1(160'h4d58344230000000dc854c0000000000700701b0),
    .price_1(32'h0011c600),     
    .qty_1(16'h0),  
    .side_1(8'h02),             
    .OrdType_1(8'h02),          
    .TimeInForce_1(8'h0),    
    .PE_enable_2(PE_enable_2),
    .ExecType_2(ExecType_2),
    .user_define0_2(user_define0_2),
    .user_define1_2(user_define1_2),
    .user_define2_2(user_define2_2),
    .user_define3_2(user_define3_2),
    .user_define4_2(user_define4_2),
    .user_define5_2(user_define5_2),
    .user_define6_2(user_define6_2),
    .user_define7_2(user_define7_2),
    .symbol_type_2(symbol_type_2),
    .sym_2(sym_2),
    .price_2(price_2),     
    .qty_2(qty_2),  
    .side_2(side_2),             
    .OrdType_2(OrdType_2),          
    .TimeInForce_2(TimeInForce_2),    

    .PE_enable_3(PE_enable_3),
    .ExecType_3(ExecType_3),
    .user_define0_3(user_define0_3),
    .user_define1_3(user_define1_3),
    .user_define2_3(user_define2_3),
    .user_define3_3(user_define3_3),
    .user_define4_3(user_define4_3),
    .user_define5_3(user_define5_3),
    .user_define6_3(user_define6_3),
    .user_define7_3(user_define7_3),
    .symbol_type_3(symbol_type_3),
    .sym_3(sym_3),
    .price_3(price_3),     
    .qty_3(qty_3),  
    .side_3(side_3),             
    .OrdType_3(OrdType_3),          
    .TimeInForce_3(TimeInForce_3),    

    .PE_enable_4(PE_enable_4),
    .ExecType_4(ExecType_4),
    .user_define0_4(user_define0_4),
    .user_define1_4(user_define1_4),
    .user_define2_4(user_define2_4),
    .user_define3_4(user_define3_4),
    .user_define4_4(user_define4_4),
    .user_define5_4(user_define5_4),
    .user_define6_4(user_define6_4),
    .user_define7_4(user_define7_4),
    .symbol_type_4(symbol_type_4),
    .sym_4(sym_4),
    .price_4(price_4),     
    .qty_4(qty_4),  
    .side_4(side_4),             
    .OrdType_4(OrdType_4),          
    .TimeInForce_4(TimeInForce_4),    

    .PE_enable_5(PE_enable_5),
    .ExecType_5(ExecType_5),
    .user_define0_5(user_define0_5),
    .user_define1_5(user_define1_5),
    .user_define2_5(user_define2_5),
    .user_define3_5(user_define3_5),
    .user_define4_5(user_define4_5),
    .user_define5_5(user_define5_5),
    .user_define6_5(user_define6_5),
    .user_define7_5(user_define7_5),
    .symbol_type_5(symbol_type_5),
    .sym_5(sym_5),
    .price_5(price_5),     
    .qty_5(qty_5),  
    .side_5(side_5),             
    .OrdType_5(OrdType_5),          
    .TimeInForce_5(TimeInForce_5),    

    .PE_enable_6(PE_enable_6),
    .ExecType_6(ExecType_6),
    .user_define0_6(user_define0_6),
    .user_define1_6(user_define1_6),
    .user_define2_6(user_define2_6),
    .user_define3_6(user_define3_6),
    .user_define4_6(user_define4_6),
    .user_define5_6(user_define5_6),
    .user_define6_6(user_define6_6),
    .user_define7_6(user_define7_6),
    .symbol_type_6(symbol_type_6),
    .sym_6(sym_6),
    .price_6(price_6),     
    .qty_6(qty_6),  
    .side_6(side_6),             
    .OrdType_6(OrdType_6),          
    .TimeInForce_6(TimeInForce_6),    
    .PE_enable_7(PE_enable_7),

    .ExecType_7(ExecType_7),
    .user_define0_7(user_define0_7),
    .user_define1_7(user_define1_7),
    .user_define2_7(user_define2_7),
    .user_define3_7(user_define3_7),
    .user_define4_7(user_define4_7),
    .user_define5_7(user_define5_7),
    .user_define6_7(user_define6_7),
    .user_define7_7(user_define7_7),
    .symbol_type_7(symbol_type_7),
    .sym_7(sym_7),
    .price_7(price_7),     
    .qty_7(qty_7),  
    .side_7(side_7),             
    .OrdType_7(OrdType_7),          
    .TimeInForce_7(TimeInForce_7),    
    .PE_enable_8(PE_enable_8),

    .ExecType_8(ExecType_8),
    .user_define0_8(user_define0_8),
    .user_define1_8(user_define1_8),
    .user_define2_8(user_define2_8),
    .user_define3_8(user_define3_8),
    .user_define4_8(user_define4_8),
    .user_define5_8(user_define5_8),
    .user_define6_8(user_define6_8),
    .user_define7_8(user_define7_8),
    .symbol_type_8(symbol_type_8),
    .sym_8(sym_8),
    .price_8(price_8),     
    .qty_8(qty_8),  
    .side_8(side_8),             
    .OrdType_8(OrdType_8),          
    .TimeInForce_8(TimeInForce_8),    

    .PE_enable_9(PE_enable_9),
    .ExecType_9(ExecType_9),
    .user_define0_9(user_define0_9),
    .user_define1_9(user_define1_9),
    .user_define2_9(user_define2_9),
    .user_define3_9(user_define3_9),
    .user_define4_9(user_define4_9),
    .user_define5_9(user_define5_9),
    .user_define6_9(user_define6_9),
    .user_define7_9(user_define7_9),
    .symbol_type_9(symbol_type_9),
    .sym_9(sym_9),
    .price_9(price_9),     
    .qty_9(qty_9),  
    .side_9(side_9),             
    .OrdType_9(OrdType_9),          
    .TimeInForce_9(TimeInForce_9),    .PE_acks(PE_acks),   
    .tlast(tlast),
    .tvalid(tvalid),
    .data(data), 
    .tstrb(tstrb),
    .tkeep(tkeep)
);



//system
initial begin : proc_system
  clk = 1;
  resetn = 1;
  // system reset
  #(CYCLE) resetn = 0;
  #(CYCLE) resetn = 1;
  #(CYCLE *100); $finish;
end

// generate pattern

initial begin
    session_id = 0;
    MsgSeqNum = 1;
    epoch_s = 2;
    ms = 7;
    PE_enable_0 = 0;
    ExecType_0 = 5;
    user_define0_0 = 5;
    user_define1_0 = 4;
    user_define2_0 = 8;
    user_define3_0 = 5;
    user_define4_0 = 4;
    user_define5_0 = 3;
    user_define6_0 = 8;
    user_define7_0 = 7;
    symbol_type_0 = 4;
    sym_0 = 3;
    price_0 = 2;
    qty_0 = 1;
    side_0 = 4;
    OrdType_0 = 4;
    TimeInForce_0 = 4;
    PE_enable_1 = 0;
    ExecType_1 = 5;
    user_define0_1 = 2;
    user_define1_1 = 2;
    user_define2_1 = 2;
    user_define3_1 = 2;
    user_define4_1 = 2;
    user_define5_1 = 2;
    user_define6_1 = 2;
    user_define7_1 = 2;
    symbol_type_1 = 4;
    sym_1 = 3;
    price_1 = 456;
    qty_1 = 45;
    side_1 = 1;
    OrdType_1 = 18;
    TimeInForce_1 = 45;
    PE_enable_2 = 1;
    ExecType_2 = 14;
    user_define0_2 = 9;
    user_define1_2 = 9;
    user_define2_2 = 9;
    user_define3_2 = 9;
    user_define4_2 = 9;
    user_define5_2 = 9;
    user_define6_2 = 9;
    user_define7_2 = 9;
    symbol_type_2 = 4;
    sym_2 = 1;
    price_2 = 123;
    qty_2 = 45;
    side_2 = 2;
    OrdType_2 = 1;
    TimeInForce_2 = 1;
    PE_enable_0 = 0;
    PE_enable_1 = 0;
    PE_enable_2 = 0;
    PE_enable_3 = 0;
    PE_enable_4 = 0;
    PE_enable_5 = 0;
    PE_enable_6 = 0;
    PE_enable_7 = 0;
    PE_enable_8 = 0;
    PE_enable_9 = 0;

    wait(resetn == 0);
    wait(resetn == 1);

    #(CYCLE/2);
    #(CYCLE * 5); 

    PE_enable_1 = 1;

    #(CYCLE); 
    PE_enable_1 = 0;

    MsgSeqNum = MsgSeqNum + 1;

    #(CYCLE * 5); 

    #(CYCLE * 5);

    PE_enable_0 = 1;
    PE_enable_2 = 1;
    #(CYCLE);
    PE_enable_0 = 0;
    PE_enable_2 = 0;
    #(CYCLE * 15);
    $finish;
end


always #(CYCLE/2) clk=~clk;

initial begin
   $fsdbDumpfile("test_payload_generator.fsdb");
   $fsdbDumpvars("+mda");
   $fsdbDumpvars;
end

endmodule