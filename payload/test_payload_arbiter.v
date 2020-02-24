module test_payload_arbiter;

parameter NUM_PE = 10, CYCLE = 10;
// create clk
reg clk;
reg rst_n;
reg [NUM_PE-1:0] enables, last;

wire current;
wire enable_arbiter;

payload_arbiter #(.NUM_PE(NUM_PE)) payload_arbiter0
(
	.clk(clk),
	.rst_n(rst_n),
	.enables(enables),
	.last(last),
	.current(current),
	.enable_arbiter(enable_arbiter)
);

//system
initial begin : proc_system
  clk = 1;
  rst_n = 1;
  // system reset
  #(CYCLE) rst_n = 0;
  #(CYCLE) rst_n = 1;
  #(CYCLE *50); $finish;
end

always #(CYCLE/2) clk=~clk;

always @(posedge clk) begin
	$display("time: %d, current=%d, enable_arbiter=%d", $time, current, enable_arbiter);
end

initial begin
	enables = 10'b000000000; last = 10'b000000000;
	wait(rst_n == 0);
	wait(rst_n == 1);
	#(CYCLE/2);
			enables = 10'b100000000; last = 0;
	#CYCLE; enables = 10'b001000000; last = 0;
	#CYCLE; enables = 10'b000001010; last = 0;
	#CYCLE; enables = 10'b000000100; last = 1;
	#CYCLE; enables = 10'b010010000; last = 1;
	#CYCLE; enables = 10'b000000000; last = 1;
	#CYCLE; enables = 10'b000000000; last = 0;
	#CYCLE; enables = 10'b001001000; last = 1;
	#CYCLE; enables = 10'b000100100; last = 0;
	#CYCLE; enables = 10'b000000000; last = 0;
	#CYCLE; enables = 10'b000000000; last = 1;
	#CYCLE; enables = 10'b000000000; last = 0;
	#CYCLE; $finish;
end

initial begin
   $fsdbDumpfile("test_payload_arbiter.fsdb");
   $fsdbDumpvars("+mda");
   $fsdbDumpvars;
end

endmodule