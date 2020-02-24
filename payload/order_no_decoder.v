module order_no_decoder (
	input [5:0] x,
	output reg [7:0] y
);

always @* begin
	if (x<=9)
		y = x + 48; // base of zero
	else
		y = x + 65 - 10; // base of A
end

endmodule