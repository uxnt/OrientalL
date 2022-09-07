@echo off
echo ���������� 1.0 LTS
echo ********************************
echo *       Losu Program Kits      *
echo *         Instaling...         *
echo *        Version  1.0          *
echo *           L  T  S            *
echo *               chen-chaochen  *
echo *                    2022/8/1  *
echo ********************************
mkdir C:\losu
mkdir C:\losu\lvm
mkdir C:\losu\bin
mkdir C:\losu\inc
mkdir C:\losu\inc\����

::��װ��ִ���ļ�
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/bin/losuc.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/bin/losu.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/bin/losuh.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/bin/hetu.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/bin/lpk.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/bin/lpk_compiler.cpp
g++ -std=c++11 -static -o losu.exe losu.cpp -ldl -lpthread
g++ -std=c++11 -static -o lpk.exe lpk.cpp -ldl -lpthread
g++ -std=c++11 -static -o lpk_compiler.exe lpk_compiler.cpp
g++ -std=c++11 -static -o losuc.exe losuc.cpp
g++ -std=c++11 -static -o hetu.exe hetu.cpp
g++ -std=c++11 -static -o losuh.exe losuh.cpp
copy .\losu.exe C:\losu\bin\losu.exe
copy .\losuc.exe C:\losu\bin\losuc.exe
copy .\hetu.exe C:\losu\bin\hetu.exe
copy .\hetu.exe C:\losu\bin\��ͼ.exe
copy .\lpk_compiler.exe C:\losu\bin\lpk_compiler.exe
copy .\lpk.exe C:\losu\bin\lpk.exe
copy .\lpk.exe C:\losu\bin\����.exe
copy .\losuh.exe C:\losu\bin\losuh.exe
del .\*.exe
del .\*.cpp
::��װ��׼���
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_io.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_file.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_mark.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_math.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_md5.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_rand.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_string.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_time.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_gpio.cpp
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/lib/losuvm_webui.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_io.lsd losuvm_io.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_file.lsd losuvm_file.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_mark.lsd losuvm_mark.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_math.lsd losuvm_math.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_md5.lsd losuvm_md5.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_rand.lsd losuvm_rand.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_string.lsd losuvm_string.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_time.lsd losuvm_time.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_gpio.lsd losuvm_gpio.cpp
g++ -std=c++11 -shared -fPIC -o losuvm_webui.lsd losuvm_webui.cpp
copy .\*.lsd C:\losu\lvm\*.lsd
del .\*.lsd
del .\*.cpp
::��װ������
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/MD5.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/MDת����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/��׼��.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/ʱ��.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/��ѧ.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/�����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/�ļ�.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/�߳�.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/�ַ���.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/������.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/����.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/ͨ������.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/windows/inc/��ҳ.losu
C:\losu\bin\losuc.exe MD5
C:\losu\bin\losuc.exe MDת����
C:\losu\bin\losuc.exe ��׼��
C:\losu\bin\losuc.exe ʱ��
C:\losu\bin\losuc.exe ��ѧ
C:\losu\bin\losuc.exe ����
C:\losu\bin\losuc.exe �����
C:\losu\bin\losuc.exe �ļ�
C:\losu\bin\losuc.exe �߳�
C:\losu\bin\losuc.exe �ַ���
C:\losu\bin\losuc.exe ������
C:\losu\bin\losuc.exe ����
C:\losu\bin\losuc.exe ͨ������
C:\losu\bin\losuc.exe ��ҳ
copy .\*.lsc C:\losu\inc\����\*.lsc
del .\*.lsc
del .\*.losu
wget --no-check-certificate https://gitee.com/chen-chaochen/lpk/raw/release/losu1.0.1/sources.tar
::������װ
C:\losu\bin\losu.exe
C:\losu\bin\losuc.exe
C:\losu\bin\hetu.exe
echo ���麺�������� ��װ����
echo �뽫C:\losu\bin Ŀ¼���ӵ�path����������
pause