module tb_mux_4to1;
    reg a, b, c, d;
    reg [1:0] s;
    wire y;

    mux4to1 dut (.a(a), .b(b), .c(c), .d(d), .s(s), .y(y));

    initial begin
        $monitor("Time=%0t | s=%b a=%b b=%b c=%b d=%b -> y=%b", $time, s, a, b, c, d, y);

        a = 1; b = 0; c = 0; d = 0;
        s = 2'b00; #10;
        s = 2'b01; #10;
        s = 2'b10; #10;
        s = 2'b11; #10;
        $finish;
    end
endmodule
