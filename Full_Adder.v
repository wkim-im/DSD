module Full_Adder (SUM,C_O,X,Y,C_I);

    input wire X,Y,C_I;
    output wire SUM,C_O;
    
    wire C1,C2, O1;

    
    or (C_O,C1,C2);

	Half_Adder ha1(.SUM(O1),.CARRY(C1),.X(X),.Y(Y));
    Half_Adder ha2(.SUM(SUM),.CARRY(C2),.X(O1),.Y(C_I));

endmodule

/*
module Full_Adder (SUM,C_O,X,Y,C_I);

    input wire X,Y,C_I;
    output wire SUM,C_O;
    
    assign SUM = X^Y^C_I
    assign C_O = X&Y&C_I
endmodule
*/