#! /bin/sh

host_dir=`echo ~`                                       # 当前用户根目录
proc_name="OilAgentServer"                             # 进程名
file_name="/c_workspace/github_workspace/OilAgentServer/debug.log"    # 日志文件
pid=0

proc_num()                                              # 计算进程数
{
	num=`ps -ef | grep $proc_name | grep -v grep | wc -l`
	return $num
}

proc_id()                                               # 进程号
{
	pid=`ps -ef | grep $proc_name | grep -v grep | awk '{print $2}'`
}

proc_num
number=$?
if [ $number -eq 0 ]                                    # 判断进程是否存在
then 
	cd $host_dir/c_workspace/github_workspace/OilAgentServer/; ./OilAgentServer    # 重启进程
	proc_id                                         # 获取新进程号
	echo ${pid}, `date` >> $host_dir$file_name      # 将新进程号和重启时间记录
fi
