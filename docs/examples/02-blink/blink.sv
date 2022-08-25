module blink(input clk, output logic led);
  logic [3:0] counter = 4'b0111;

  always_ff @(posedge clk)
    if (counter == 4'b0000)
      counter <= 4'b0111;
    else
      counter <= counter - 1;

  assign led = counter == 4'b0000;
endmodule