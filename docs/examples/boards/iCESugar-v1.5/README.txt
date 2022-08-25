source:
https://github.com/wuxx/icesugar

补充说明：

1. FPGA 芯片型号是 iCE40UP5K-SG48，原理图见 [iCESugar-v1.5.pdf](iCESugar-v1.5.pdf)。
2. 板上有一个 Type-C USB 接口，该接口连接着 iCELink/STM32F103C8T6 [详细](https://www.muselab-tech.com/wan-quan-shi-yong-kai-yuan-gong-ju-lian-de-fpgadan-ban/) 提供了拖拽烧录功能，也提供了 UART 和 JTAG，其中 UART 通过跳线 J5 连接到芯片 P4 和 P6，JTAG 则是空着的，可以通过杜邦线连接到 PMOD 的任意引脚然后编程实现相关功能即可。
3. 板上有一个微动开关，连接着芯片 P8（CRESET_B），还有一个蓝色的 LED，连接着芯片 P7（CDONE），这两个引脚不要使用。
4. 板上还有一个红色和绿色 LED，它们连着 iCELink，分别用于指示运行和连接状态，这两个灯并非用于编程测试使用。

可用于编程使用的接口和指示灯：

1. 板上有 4 个 PMOD 接口，板底有丝印各个引脚对应芯片的引脚号，比如 PMOD1 的 12 引脚的名称是 P9，则表示连接着芯片的 9 号引脚（被命名为 IOB_16A 那个）。
2. 板上有一个 Micro-USB 接口，该接口连接着芯片 P9 和 P10，平时没有任何功能，用于练习编程 USB 协议程序。
3. 板上有 4 个拨动开关，默认拉高，连接着 PMOD4 的 3, 4, 5, 6 号引脚，这 4 个引脚在板子出厂时通过跳线短接到 PMOD4 的 10, 9, 8, 7 引脚，这几个引脚连接到芯片的 P18, P19, P20, P21，用于做编程实验的。（河马蜀黍觉得如果换成两个微动开关会实用一些）
4. 板上有一个三色 LED，连着芯片 P39, P40, P41，分别是蓝色，红色和绿色，用于编程测试使用。
