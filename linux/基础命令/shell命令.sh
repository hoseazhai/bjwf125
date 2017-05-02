wc命令：

wc [OPTION]... [FILE]...
    -l  #lines
    -w  #words
    -c  #characters

cut命令  #

cut [OPTION]... [FILE]...
    -d DELIMITER：指明分隔符
    -f FILEDS  #
        #：第#个字段
        #,#[,#]：离散的多个字段，例如1,3,6
        #-#：连续的多个字段，例如1-6
        
        混合使用：1-3,7

sort命令：

sort [OPTION]... [FILE]...
    -f：忽略字符大小写
    -r：逆序
    -t DELIMITER：字段分隔符
    -k #：以指定字段为标准排序
    -n：以数值大小进行排序
    -u：uniq,排序后去重

uniq命令：

uniq [OPTION]... [FILE]...
    -c：显示每行重复出现的次数
    -d：仅显示重复过的行
    -u：仅显示不曾重复的行

Note：连续且完全相同方为重复
用户何组相关的管理命令： 用户创建：useradd

useradd [option] LOGIN
        -u UID：[UID_MIN,UID_MAX]，定义在/etc/login.defs
        -g GID：指明用户所属基本组，可为组名，也可以GID；
        -c "COMMENT"：用户的注释信息；
        -d /PATH/TO/HOME_DIR：以指定的路径为家目录
        -s SHELL：指明用户的默认shell程序，可用列表在/etc/shells文件中；
        -G GROUP1[,GROUP2,...[,GROUPN]]：为用户指明附加组；组必须先存在；
        -r：创建系统用户

cat命令：

cat [OPTION]... [FILE]...
    -A  #相当于-vET的整合选项，可列出一些特殊字符而不是空白而已；
    -b  #列出行号，仅针对非空白行做行号显示，空白行不标行号。
    -E  #将结尾的断行字符$显示出来；
    -n  #打印出行号，连同空白行也会有行号，与-b的选项不通。
    -T  #将[tab]按键以^I显示出来；
    -v  #列出一些看不出来的特殊字符；

nl命令

nl [OPTION]... [FILE]...
    -b  #指定行号指定的方式，主要由两种  #
        -b a   # 表示不论是否为空行，也同样列出行号（类似cat -n）。
        -b t   # 如果有空行，空的那一行不要列出行号（默认值）；
    -n  #列出行号表示的方法，主要有三种：
        -n ln   # 行号在屏幕的最左方显示；
        -n rn   # 行号在自己字段的最右方显示，且不加0；
        -n rz   # 行号在自己字段的最右方显示，且不加0；
    -w  #行号字段的占用的字符数

cp(复制文件或目录)
    
    cp [options] source1 source2 source3 .... directory 选项与参数  #
    -a  #相当于 -dr --preserve=all 的意思，至于 dr 请参考下列说明;(常用)
    -d  #若来源文件为链接文件的属性(link file)，则复制链接文件属性而非文件本身;
    -f  #为强制(force)的意思，若目标文件已经存在且无法开启，则移除后再尝试一次; 
    -i  #若目标文件(destination)已经存在时，在覆盖时会先询问动作的进行(常用)
    -l  #进行硬式连结(hard link)的连结档建立，而非复制文件本身;
    -p  #连同文件的属性(权限、用户、时间)一起复制过去，而非使用默认属性(备份常用);
    -r  #递归持续复制，用于目录的复制行为;(常用)
    -s  #复制成为符号链接文件 (symbolic link)，亦即『快捷方式』文件;
    -u  #destination 比 source 旧才更新 destination，或 destination 不存在的情况下才复制。 
    --preserve=all  #除了 -p 的权限相关参数外，还加入 SELinux 的属性, links, xattr 等也复制了。 最后需要注意的，如果来源档有两个以上，则最后一个目的文件一定要是『目录』才行!

rm(移除文件或目录)
    
    rm [-fir] 文件或目录
    选项与参数  #
    -f  #就是 force 的意思，忽略不存在的文件，不会出现警告讯息;
    -i  #互动模式，在删除前会询问使用者是否动作
    -r  #递归删除啊!最常用在目录的删除了!这是非常危险的选项!!!

touch(创建文件及修改文件时间)

    touch [-acdmt] 文件
    选项与参数：
    -a  #仅修改访问时间
    -c  #仅修改修改文件的时间，若该文件不存在则不建立新文件
    -m  #仅修改改变文件的时间
    -t  #后面可以接欲修订的时间而不用目前的时间，格式为[YYYYMMDDhhmm]














































    