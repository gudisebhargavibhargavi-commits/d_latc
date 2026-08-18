module d_latch_tb;

reg D;
reg EN;
wire Q;

d_latch uut (
    .D(D),
    .EN(EN),
    .Q(Q)
);

initial begin
    $monitor("Time=%0t | EN=%b | D=%b | Q=%b", 
             $time, EN, D, Q);

    EN = 0; D = 0;
    #10 D = 1;
    #10 EN = 1;
    #10 D = 0;
    #10 D = 1;
    #10 EN = 0;
    #10 D = 0;
    #10 EN = 1;
    #10 D = 0;

    #10 $finish;
end

endmodule