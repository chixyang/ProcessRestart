crontab -e  进入crontab
编辑如下命令：表示每分钟运行moniter.sh一次

*/1 * * * * /root/c_workspace/github_workspace/OilAgentServer/monitor.sh
