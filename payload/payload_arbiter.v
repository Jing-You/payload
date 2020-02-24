module payload_arbiter
#(
	parameter NUM_PE = 10
)
(
	input clk,
	input rst_n,
	input [NUM_PE-1:0] enables,
	input last,

	output reg [7:0] current,
	output reg enable_arbiter
);

integer i;

reg [NUM_PE-1 : 0]enable_buffer;

reg [3:0] queue[NUM_PE-1:0];
reg [3:0] size_q;
wire [4:0] next_size_q = size_q + (enable_buffer != 0) - (last);
reg [4:0] enable_num;

always @(posedge clk) begin
	if (!rst_n) begin
		enable_arbiter <= 0;
	end
	else begin
		if (last && size_q > 1) begin
			enable_arbiter <= 1;
		end
		else if (size_q == 0 && enable_buffer) begin
			enable_arbiter <= 1;
		end
		else begin
			enable_arbiter <= 0;
		end
	end
end

always @*begin
	current = queue[0];
end

always @(posedge clk) begin
	if (!rst_n) begin
		enable_buffer <= 0;
	end
	else begin
		for(i=0; i<NUM_PE-1; i=i+1)
			if (enables[i])
				enable_buffer[i] <= 1;
			else if (enable_num == i && enable_buffer)
				enable_buffer[i] <= 0;
			else 
				enable_buffer[i] <= enable_buffer[i]; 
	end
end

always @(posedge clk) begin
	if (!rst_n) begin
		size_q <= 0;
	end	
	else begin
		size_q <= next_size_q;
	end
end

reg flag;

always @* begin
	flag = 0;
	for(i=0; i<NUM_PE; i=i+1) begin
		if (flag == 0 && enable_buffer[i])  begin
			enable_num = i;
			flag = 1;
		end
	end
end

always @(posedge clk) begin
	if (!rst_n) begin
		for (i = 0; i < NUM_PE - 1; i=i+1) begin
			queue[i] <= 0;
		end
	end
	else if (last && enable_buffer) begin
		for (i=0; i<NUM_PE-1; i=i+1) begin
			if (i != size_q -1)
				queue[i] <= queue[i + 1];
			else
				queue[i] <= enable_num; 
		end
	end
	else if (enable_buffer) begin
		queue[size_q] <= enable_num;
	end
	else if (last) begin
		for (i=0; i<NUM_PE-1; i=i+1) begin
			queue[i] <= queue[i + 1];
		end
	end
end

endmodule