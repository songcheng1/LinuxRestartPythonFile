# Linux 定时执行 python 脚本

切换到run_me.sh 路径下
1.chmod 777 run_me.sh
2.crontab -e
3.编写crontab执行命令
    * * * * *  /home/run_me.sh  # 这里是每分钟执行一次
注：如果没有执行，进入root权限，再去执行


crontab 常用指令：
    crontab -e # 进入编辑状态
    crontab -l # 查询正在crontab执行指令
    crontab -r # 清除crontab执行的命令
    
crontab编写解释
    *   *   *   *   *   user    command
    分  时  日  月  周   用户    命令
例如：
    1、每分钟执行一次
       * * * * * user command
    2、每隔2小时执行一次
       * */2 * * * user command (/表示频率)
    3、每天8:30分执行一次
       30 8 * * * user command
    4、每小时的30和50分各执行一次
       30,50 * * * * user command（,表示并列）
    5、每个月的3号到6号的8:30执行一次
       30 8 3-6 * * user command （-表示范围）
    6、每个星期一的8:30执行一次
       30 8 * * 1 user command （周的范围为0-7,0和7代表周日） 
       
       
       
# 查询正在执行脚本的进程(这里以main.py为例)
ps -aux|grep main.py| grep -v grep | awk '{print $2}'  
# 杀死正在运行脚本的进程(这里以main.py为例)
ps -aux|grep main.py| grep -v grep | awk '{print $2}' | xargs kill -9
    
# 注意该脚本以nohup执行，请先安装nohup (centos)
yum install coreutils 
