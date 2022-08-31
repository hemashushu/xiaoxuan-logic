module blink(input clk, output logic led);
  logic [3:0] counter = 4'b1000;

  always_ff @(posedge clk)
    if (counter == 0)
      counter <= 4'b1000;
    else
      counter <= counter - 1;

  assign led = counter > 4'b0100;
endmodule