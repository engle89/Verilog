module addbit (a, b, cin, sum, cout);

input a;
input b;
input cin;
output sum;
output cout;

sum = a ^ b ^ CarryIn;
cout = ((a&b) | (b&cin) | (a & cin));
endmodule