# The first log File
## problem of the virtual box ip
桥接模式的特点：

虚拟机和宿主机处于同等地位，就像是一台真实主机一样存在于局域网中，可以分配到一个网络中独立的IP。

虚拟机和宿主机之间能够互访。

如果网络断开，即便虚拟机和宿主机其实是在一台物理机器上，宿主机也不能够访问虚拟机。

NAT模式：

虚拟系统借助NAT(网络地址转换)功能，通过宿主机器所在的网络来访问公网。也就是说，使用NAT模式可以实现在虚拟系统里访问互联网。

NAT模式下的虚拟系统的TCP/IP配置信息是由(NAT)虚拟网络的DHCP服务器提供的，无法进行手工修改，因此虚拟系统也就无法和本局域网中的其他真实主机进行通讯。

采用NAT模式最大的优势是虚拟系统接入互联网非常简单，你不需要进行任何其他的配置，只需要宿主机器能访问互联网即可。


Host-only模式：

Virtualbox在宿主机中模拟出一张专供虚拟机使用的网卡，所有虚拟机都是连接到该网卡上的，虚拟机可以通过该网卡IP访问宿主机，同时Virtualbox提供一个DHCP服务，虚拟机可以获得一个内部网IP，宿主机可以通过该IP访问虚拟机。如果单纯使用Host-only模式，则虚拟机不能连接外部公共网络。

1.安装系统时需要联网,先配置一个nat网卡保证安装能正常进行。  	
2.nat模式下物理机是不能发现虚拟机的存在的，需要添加一块host only网卡来实现互访。   

## install MySql
https://blog.csdn.net/weixin_42266606/article/details/80879571
yum -y install wget  
wget mysqlLocation  
tar -xvf mysql-8.0.11-1.el7.x86_64.rpm-bundle.tar  命令解压 tar 包  
通过 rpm -qa | grep NAME 命令查看 NAME 的安装包  
***卸载package yum remove package_name Uninstalling a RPM Package***    
>RPM Package Manager (also known simply as RPM),
>YUM (Yellowdog Updater Modified) is an open source command-line as well as graphical based package management tool for RPM (RedHat Package Manager) based Linux systems.  
RPM是RedHat Package Manger（RedHat软件管理工具),是一种用于打包及安装工具  
-qa代表query，a代表all  
grep(global search rgular expression(RE) and print out the line):是一种强大的文本搜索工具  
状态 systemctl status NAME -l  
*通过 vi /etc/sysconfig/iptables 命令编辑防火墙，添加端口*  

## request没有getContextPath()方法是因为未导入tomcat lib依赖  
## phpmyadmin创建外键约束，1. 两个表都为InnoDB引擎 2. 父表字段为主键  
Config the database in IDEA intellij  
1.Windows下

启动服务
mysqld --console　　
或　　net start mysql　　
关闭服务
mysqladmin -uroot shudown　　
或　　net stop mysql　　
 

2.Linux下

启动服务
service mysql start　　　
关闭服务
service mysql stop　　
重启服务
service restart stop  

*JDK包含JRE，而JRE包含JVM*

Cannot resolve table 'blog' 解决办法，点击persistence，*Assign Data Sources*  
*数据库访问deny是因为persistence.xml文件中配置的hibernate密码不正确*  
**tomcat部署的时候去掉url中的war_exploded包括application context:**  
使用redirect：要允许浏览器重定向  
删除数据表中的数据 让主键id 从1开始自增  
1 方式一  
清空表数据并且将主键自增长从1开始(1.先清空表数据2.在把表的自增长设置为1)  
DELETE FROM user;  
ALTER TABLE user AUTO_INCREMENT=1;  
<c>标签：在jsp中使用了jstl语法，可以方便地进行一些判断<c:if>与遍历操作<c:forEach>  
	使用import java.sql.Date; in BlogEntity.java  

安装yum -y install java-1.8.0-openjdk*  





