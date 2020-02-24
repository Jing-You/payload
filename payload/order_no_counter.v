module order_no_counter (

	input clk,
	input rst_n,
	input enable,
	output [7:0] order_no_0,
	output [7:0] order_no_1,
	output [7:0] order_no_2,
	output [7:0] order_no_3,
	output [7:0] order_no_4
);

/*
	ASCII TABLE
	'0':48
	'A':65
*/

parameter MIN = 0, MAX = 25+10;
reg  [5:0] counter [4:0];
reg  [5:0] counter_next [4:0];
integer i;

always @(posedge clk) begin
	if (!rst_n) begin
		for (i=0; i<5; i=i+1)
			counter[i] <= 0;
	end
	else if (enable) begin
		for (i=0; i<5; i=i+1)
			counter[i] <= counter_next[i];
	end
end

always @* begin
	for (i=1; i<5; i=i+1)
		counter_next[i] = counter[i];
	counter_next[0] = counter[0] + 1;
	for (i = 0; i < 5; i=i+1) begin
		if (counter_next[i] == MAX + 1) begin
			counter_next[i] = 0;
			if (i != 4)
				counter_next[i+1] = counter[i+1] + 1;
		end
		else begin
			counter_next[i] = counter_next[i];
		end
	end
end

order_no_decoder order_no_decoder0(
	.x(counter[0]),
	.y(order_no_0)
);
order_no_decoder order_no_decoder1(
	.x(counter[1]),
	.y(order_no_1)
);
order_no_decoder order_no_decoder2(
	.x(counter[2]),
	.y(order_no_2)
);
order_no_decoder order_no_decoder3(
	.x(counter[3]),
	.y(order_no_3)
);
order_no_decoder order_no_decoder4(
	.x(counter[4]),
	.y(order_no_4)
);

endmodule