module mux4to1 (a, b, c, d, s, y);
    input a, b, c, d;
    input [1:0] s;
    output reg y;

    always @(*) begin
        if (s == 0)
            y = a;
        else if (s == 1)
            y = b;
        else if (s == 2)
            y = c;
        else
            y = d;
    end
endmodule
