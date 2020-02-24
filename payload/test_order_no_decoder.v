module test_order_no_decoder;

parameter NUM_PE = 10, CYCLE = 10;
// create clk
reg clk;
reg rst_n;
reg enable;
wire [7:0] order_no_0;
wire [7:0] order_no_1;
wire [7:0] order_no_2;
wire [7:0] order_no_3;
wire [7:0] order_no_4;

order_no_counter order_no_counter0
(
	.clk(clk),
	.rst_n(rst_n),
	.enable(enable),
	.order_no_0(order_no_0),
	.order_no_1(order_no_1),
	.order_no_2(order_no_2),
	.order_no_3(order_no_3),
	.order_no_4(order_no_4)
);

//system
initial begin : proc_system
  clk = 1;
  rst_n = 1;
  // system reset
  #(CYCLE) rst_n = 0;
  #(CYCLE) rst_n = 1;
  #(CYCLE *100); $finish;
end

always #(CYCLE/2) clk=~clk;

always @(posedge clk) begin
	$display("time: %d, enable=%d, %c%c%c%c%c", $time, enable, order_no_4, order_no_3, order_no_2, order_no_1, order_no_0);
end

initial begin
	enable = 10'b000000000;
	wait(rst_n == 0);
	wait(rst_n == 1);
	#(CYCLE/2);
			enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;	
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;
	#CYCLE; enable = 1;	
	#CYCLE; $finish;
end

initial begin
   $fsdbDumpfile("test_order_no_decoder.fsdb");
   $fsdbDumpvars("+mda");
   $fsdbDumpvars;
end

endmodule