### 测试结果
1. 实体机测试结果

| 系统          | 对应架构    |
|-------------|---------|
| Windows Xp  | win32   |
| Windows 10  | win64   |
| Windows PE 32位 | winpe32 |
| Windows PE 64位 | winpe64 |
| Ubuntu 20.4 LTS amd64 | Linux5.4-x86_64 |
| Ubuntu 16.04 32位| linux4.8.0-x86|
| Ubuntu meta |linux5.4-arm|
| Android  | x86 [需移植]<br>arm [需移植] |
|[Losu Os zero](https://gitee.com/chen-chaochen/lpk/blob/doc/LosuOS/readme.md)|x86 OK<br>x64 OK<br>Arm OK|
2. 虚拟机结果

| 系统       | 结果                     |
|----------|------------------------|
| Deepin20 | OK                     |
| 银河麒麟     | OK                     |
| Openkylin     | x86 OK<br>RISC-V OK    |
| UOS      | OK                     |
| 欧拉       | OK                     |
| CentOS 5~8  | OK               |
| Ubuntu kylin     | OK      |
|Free BSD|OK|
3. 系统移植测试结果

| 系统        | 结果                     |
|-----------|------------------------|
| LoongOS   | 标准运行环境 OK<br>标准编译环境 NO<br>移植编译环境 未测试 |    
| RT-linux | 标准运行环境 NO <br>标准编译环境 NO<br>移植运行环境 OK<br>移植编译环境 未测试|
| RT-thread | 标准运行环境 NO <br>标准编译环境 NO<br>移植运行环境 OK<br>移植编译环境 未测试|           
|    OpenHarmony    |  标准运行环境 NO <br>标准编译环境 NO<br>移植运行环境 OK<br> 移植编译环境 未测试  |
|    Mac Os  | 未测试，视作UNIX进行移植    |
4. MCU裸机移植测试
- 技术路线 洛书指令 ----> C代码(等效指令+运行环境) ----官方SDK----> 固件(UF2)文件
- OK：能跑就行，可能会功能受限，比如线程之类
- NO：没让它跑起来。

| 开发板 | 结果 |
|-----|----|
|   树莓派pico  | OK |
|   51单片机(stc89c52)  |  OK*  |
|  STM开发板(stm32F103RCT6)   |  OK*  |

*当真不推荐这么干，一个指挥型语言玩裸机开发，不仅没啥优势还会累个半死做移植

### 结论
洛书的跨平台能力总体算较强的
- 洛书指令具有平台无关性，一处编译，多处运行
- 对于主流操作系统保持完美兼容，支持一键安装，MAC要略作修改。
- 对于嵌入式LINUX保持较强兼容，大部分直接使用，小部分微调后即可正常使用。极端情况下一个内核加文件系统也能运行。
- 对于遵循POSIX标准的系统，经简单移植后也可以运行，仔细移植的情况下可以保证绝大多数功能的使用。
- 对于裸机，只要舍得折腾，也能移植上去。