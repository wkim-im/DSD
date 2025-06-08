module decoder (
    input wire EN,
    input wire [1:0] IN,
    output wire [3:0] OUT
);

    assign OUT = EN?(4'b0001 << IN) : 4'b0000;

endmodule