#!/bin/bash
# 杀死正在运行的进程id
ps -aux|grep run_me.py| grep -v grep | awk '{print $2}' | xargs kill -9
cd logs/
touch `date +'%Y-%m-%d'`.txt
cd ../

# python路径 python运行文件路径 >> logs 路径(最好全部是绝对路径,`date +'%Y-%m-%d'`.txt 按照日期输出日志文件 2(1代表正常输出,2代表异常输出)>&1)
nohup /root/anaconda3/bin/python3 /home/run_me.py >> /home/logs/`date +'%Y-%m-%d'`.txt 2>&1 &