# The `AND` Gate

一个简单的逻辑 `与门` 程序。

## 编译、仿真、测试

1. 编译

```bash
$ anlpm build
```

得到 `and-gate.sv`

2. 仿真

```bash
$ anlpm sim
```

然后根据提示使用浏览器打开一个本地 URL，即可见到可交互的仿真界面。

3. 测试

```bash
$ anlpm test
```

如无意外，将会看到 "all passed" 字样。

## 下载至 FPGA

系统需安装以下软件：

1. 综合（合成）工具 yosys: https://github.com/YosysHQ/yosys
2. 布线工具 nextpnr: https://github.com/YosysHQ/nextpnr
3. 打包工具 icestorm: https://github.com/YosysHQ/icestorm

不同的 FPGA 芯片需要使用不同的布线工具和打包工具，示例使用的芯片是 `iCE40UP5k`，对于 Arch Linux 系统可以使用下列命令安装它们：

```bash
$ yay -S yosys-nightly
$ yay -S nextpnr-ice40-nightly
$ yay -S icestorm-nightly
```
