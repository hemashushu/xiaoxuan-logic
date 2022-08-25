// set_io LED_B    39
// set_io P1_1     10
// set_io P1_12    9

module top(input logic P1_1, input logic P1_12, output logic LED_B);
  and_gate ag1(
    .a(P1_1),
    .b(P1_12),
    .out(LED_B)
  );
endmodule
