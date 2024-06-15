module tb_full_adder;
    logic a, b, cin;
    logic sum, cout;

    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        a = 0; b = 0; cin = 0;
        #10; a = 0; b = 1; cin = 0;
        #10; a = 1; b = 0; cin = 0;
        #10; a = 1; b = 1; cin = 0;
        #10; a = 0; b = 0; cin = 1;
        #10; a = 0; b = 1; cin = 1;
        #10; a = 1; b = 0; cin = 1;
        #10; a = 1; b = 1; cin = 1;
        #10; $stop;
    end
endmodule