module test_payload;

parameter CYCLE = 10;

// create clk
reg clk;
reg rst_n;

wire current;
wire enable_arbiter;
//reg [31:0] epoch_time; //check the time with cpu
reg [31:0] price;    
reg [15:0] qty; 
reg enable; 
reg [31:0] MsgSeqNum;   
reg [15:0] session_id;  
reg [7:0] ExecType;     
reg [31:0] investor_acno; 
reg [7:0] investor_flag;  
reg [7:0] side;           
reg [7:0] OrdType;        
reg [7:0] TimeInForce;    
//reg [7:0] PositionEffect; 

wire tlast;
wire tvalid;
wire [255:0]data;
wire [2:0] cnt;

reg [31:0] epoch_s;
reg [15:0] ms;
//reg [15:0] hdr_fcm_id;
reg [15:0] cm_id;
//reg [15:0] fcm_id;
reg [7:0] order_no0;
reg [7:0] order_no1;
reg [7:0] order_no2;
reg [7:0] order_no3;
reg [7:0] order_no4;
reg [31:0] ord_id;
reg [7:0] user_define0;
reg [7:0] user_define1;
reg [7:0] user_define2;
reg [7:0] user_define3;
reg [7:0] user_define4;
reg [7:0] user_define5;
reg [7:0] user_define6;
reg [7:0] user_define7;
reg [7:0] symbol_type;
reg [159:0] sym;
//reg [7:0] order_source;
//reg [7:0] info_source0;
//reg [7:0] info_source1;
//reg [7:0] info_source2;

payload payload0
(
    .clk(clk),
    .resetn(rst_n),
    // .epoch_time(epoch_time), //check the time with cpu
    .enable(enable),
    .tready(1),

    .price(price),    
    .qty(qty),
     
    .MsgSeqNum(MsgSeqNum),
    .epoch_s(epoch_s),
	.ms(ms),

    .session_id(session_id),
    .cm_id(cm_id), 
    .ExecType(ExecType),     
    .investor_acno(investor_acno),
    .investor_flag(investor_flag),
    .side(side),              
    .OrdType(OrdType),        
    .TimeInForce(TimeInForce),
    //.PositionEffect(PositionEffect),

    .tlast(tlast),
    .tvalid(tvalid),
	.cnt(cnt),
    .data(data),
	
	.order_no0(order_no0),
	.order_no1(order_no1),
	.order_no2(order_no2),
	.order_no3(order_no3),
	.order_no4(order_no4),
	.ord_id(ord_id),
	.user_define0(user_define0),
	.user_define1(user_define1),
	.user_define2(user_define2),
	.user_define3(user_define3),
	.user_define4(user_define4),
	.user_define5(user_define5),
	.user_define6(user_define6),
	.user_define7(user_define7),
	.symbol_type(symbol_type),
	.sym(sym)
);

//system
initial begin : proc_system
	clk = 1;
	rst_n = 1;
	// system reset
	#(CYCLE) rst_n = 0;
	#(CYCLE) rst_n = 1;
	#(CYCLE *1000); $finish;
end

always #(CYCLE/2) clk=~clk;

// display debug information
always @(posedge clk) begin
	$display("time: %d, cnt=%d, data=%b, enable=%d, tlast=%d", $time, cnt, data, enable, tlast);
end


// generate pattern
initial begin
	epoch_s = 1025;
	ms = 16;
	price = 10000;
	qty = 2;
	enable = 0;
	MsgSeqNum = 1;
	session_id = 2;
	cm_id = 3;
	ExecType = 4;
	investor_acno = 5;
	investor_flag = 6;
	side = 1;
	OrdType = 0;
	TimeInForce = 7;
	order_no0 = 8;
	order_no1 = 9;
	order_no2 = 10;
	order_no3 = 11;
	order_no4 = 12;
	ord_id = 33;
	user_define0 = 0;
	user_define1 = 1;
	user_define2 = 2;
	user_define3 = 3; 
	user_define4 = 4;
	user_define5 = 5;
	user_define6 = 6;
	user_define7 = 7;
	symbol_type = 1;
	sym = 1025;


	wait(rst_n == 0);
	wait(rst_n == 1);
	#(CYCLE/2);

	#(CYCLE) enable = 1;
	$display("first test pattern");
	#(CYCLE) enable = 0;

	wait(cnt == 0);
	$display("----------------lol------------------");
	
	epoch_s = 1027;
	ms = 16;
	price = 10000;
	qty = 2;
	enable = 0;
	MsgSeqNum = 1;
	session_id = 2;
	cm_id = 3;
	ExecType = 4;
	investor_acno = 5;
	investor_flag = 6;
	side = 1;
	OrdType = 0;
	TimeInForce = 63;
	order_no0 = 8;
	order_no1 = 9;
	order_no2 = 10;
	order_no3 = 11;
	order_no4 = 12;
	ord_id = 33;
	user_define0 = 0;
	user_define1 = 1;
	user_define2 = 2;
	user_define3 = 3; 
	user_define4 = 4;
	user_define5 = 5;
	user_define6 = 6;
	user_define7 = 7;
	symbol_type = 2;
	sym = 1027;

	#(CYCLE) enable = 1;
	$display("second test pattern");
	#(CYCLE) enable = 0;
	wait(cnt == 0);
	$display("----------------lol------------------");
	
	epoch_s = 1029;
	ms = 16;
	price = 10000;
	qty = 2;
	enable = 0;
	MsgSeqNum = 1;
	session_id = 2;
	cm_id = 3;
	ExecType = 4;
	investor_acno = 5;
	investor_flag = 6;
	side = 1;
	OrdType = 0;
	TimeInForce = 127;
	order_no0 = 8;
	order_no1 = 9;
	order_no2 = 10;
	order_no3 = 11;
	order_no4 = 12;
	ord_id = 33;
	user_define0 = 0;
	user_define1 = 1;
	user_define2 = 2;
	user_define3 = 3; 
	user_define4 = 4;
	user_define5 = 5;
	user_define6 = 6;
	user_define7 = 7;
	symbol_type = 3;
	sym = 1029;

	#(CYCLE) enable = 1;
	$display("third test pattern");
	#(CYCLE) enable = 0;
	wait(cnt == 0);
	$display("----------------lol------------------");
	#CYCLE; $finish;

end



initial begin
   $fsdbDumpfile("test_payload.fsdb");
   $fsdbDumpvars("+mda");
   $fsdbDumpvars;
end

endmodule
