module decoder (
    input wire EN,
    input wire [1:0] IN,
    output wire [3:0] OUT
);
    //data flow modeling , not use shifting <- 하드웨어 만들어 질때 오해의 소지가 있음
    assign OUT[0] = EN? (~IN[1]&~IN[0]) : 1'b0; // assign 구문으로 할당
    assign OUT[1] = EN? (~IN[1]&IN[0]) : 1'b0;
    assign OUT[2] = EN? (IN[1]&~IN[0]) : 1'b0;
    assign OUT[3] = EN? (IN[1]&IN[0]) : 1'b0;

endmodule