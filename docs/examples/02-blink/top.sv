module top(input clk, output logic LED_G);
  blink b1 (
    .clk(clk),
    .led(LED_G)
  );
endmodule