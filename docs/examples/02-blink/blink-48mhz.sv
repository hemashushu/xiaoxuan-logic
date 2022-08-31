module blink(input clk, output logic led);
  // 48MHz -> 1 second
  // 24M ticks -> 0.5 second
  //
  // 24M = 24_000_000 = 0x16E3600
  // bit width (0x16E3600) = 28

  logic [31:0] counter = 32'h16E3600;

  always_ff @(posedge clk)
    if (counter == 0)
      counter <= 32'h16E3600;
    else
      counter <= counter - 1;

  assign led = counter > 32'hB71B00;
endmodule