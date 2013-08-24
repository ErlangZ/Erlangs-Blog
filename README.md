Erlangs-Blog : Edtion 1
============

供自己使用和进行技术交流的博客

============
环境配置和启动方法

1. 在windows环境中，安装python2.7，运行 ./start.bat
2. web-server会运行在8000端口
3. 在浏览器中输入 localhost:8000/bin-cgi/index.py 

你就可以看见一个很丑的首页了。

============
文件目录说明

----css 						样式文件目录

----data 						数据文件目录
  --table.sql   				创建数据表的sql文件
  --insert-test-data.sql        用来作为测试数据

----pic							素材图片目录

----bin-cgi						cgi脚本目录
				

============
版本迭代

Edition 0：静态页面--设计了贴图和页面布局

Edition 1：cgi --使用python作为cgi脚本语言 
                 使用Python2.7 web server作为服务器
           database--使用mysql作为后台数据库
           			 要求python安装驱动
