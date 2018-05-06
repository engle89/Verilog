module adder(a, b, cin, sum, cout);

	input [15:0] a, b;
	input cin;
	output cout;
	output [15:0] sum;
	wire r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15;

	addbit s0( .a( a[0] ), .b( b[0]), .cin( cin ), .sum( sum[0]), .cout( r0));
	addbit s1( .a( a[1] ), .b( b[1]), .cin( r0 ), .sum( sum[1]), .cout( r1));
	addbit s2( .a( a[2] ), .b( b[2]), .cin( r1 ), .sum( sum[2]), .cout( r2));
	addbit s3( .a( a[3] ), .b( b[3]), .cin( r2 ), .sum( sum[3]), .cout( r3));
	addbit s4( .a( a[4] ), .b( b[4]), .cin( r3 ), .sum( sum[4]), .cout( r4));
	addbit s5( .a( a[5] ), .b( b[5]), .cin( r4 ), .sum( sum[5]), .cout( r5));
	addbit s6( .a( a[6] ), .b( b[6]), .cin( r5 ), .sum( sum[6]), .cout( r6));
	addbit s7( .a( a[7] ), .b( b[7]), .cin( r6 ), .sum( sum[7]), .cout( r7));
	addbit s8( .a( a[8] ), .b( b[8]), .cin( r7 ), .sum( sum[8]), .cout( r8));
	addbit s9( .a( a[9] ), .b( b[9]), .cin( r8 ), .sum( sum[9]), .cout( r9));
	addbit s10( .a( a[10] ), .b( b[10]), .cin( r9 ), .sum( sum[10]), .cout( r10));
	addbit s11( .a( a[11] ), .b( b[11]), .cin( r10 ), .sum( sum[11]), .cout( r11));
	addbit s12( .a( a[12] ), .b( b[12]), .cin( r11 ), .sum( sum[12]), .cout( r12));
	addbit s13( .a( a[13] ), .b( b[13]), .cin( r12 ), .sum( sum[13]), .cout( r13));
	addbit s14( .a( a[14] ), .b( b[14]), .cin( r13 ), .sum( sum[14]), .cout( r14));
	addbit s15( .a( a[15] ), .b( b[15]), .cin( r14 ), .sum( sum[15]), .cout( r15));
	
	assign cout = (a[15] == 0 && b[15] == 0 && sum[15] == 1) ? 1 : // a and b are positive, negative result
					  (a[15] == 1 && b[15] == 1 && sum[15] == 0) ? 1 : // a and b are negative, positive result
						0;

endmodule

module addbit (a, b, cin, sum, cout);

	input a;
	input b;
	input cin;
	output reg sum;
	output reg cout;

	always @(*) begin
		sum = a ^ b ^ cin;
		cout = ((a&b) | (b&cin) | (a & cin));
	end

endmodule