#!/usr/bin/perl -pi

s|^(<HTML lang="zh)">|$1-CN">|;
s|^(<META http-equiv=.*charset)=Big5">|$1=GB2312">|;
s/(\.zh)(?=\.(?:gif|jpg|png))/$1-cn/g;
s|^<A href=".*">(中文&nbsp;\(GB\))</A>(?=&nbsp;)|$1|;

s/软件套件/软件包/g; s/套件/软件包/g;
while (s/^((?:[\x00-\x7F]|[\x80-\xFF].)+)「/$1“/) {}
while (s/^((?:[\x00-\x7F]|[\x80-\xFF].)+)」/$1”/) {}
while (s/^((?:[\x00-\x7F]|[\x80-\xFF].)+(软|硬))体(?!动物)/$1软件/) {}
while (s/^((?:[\x00-\x7F]|[\x80-\xFF].)+)程式/$1程序/) {}
while (s/^((?:[\x00-\x7F]|[\x80-\xFF].)+(软|硬|光))碟/$1盘/) {}
while (s/^((?:[\x00-\x7F]|[\x80-\xFF].)+)相容/$1兼容/) {}
while (s/^((?:[\x00-\x7F]|[\x80-\xFF].)+)电脑/$1计算机/) {}
s/作业系统/操作系统/g;
s/预设语言/默认语言/g;
s/映射站/镜像站/g;
s/伺服器/服务器/g;
