#!/usr/bin/perl -pi

s|^(<HTML lang="zh)">|$1-TW">|;
s/(\.zh)(?=\.(?:gif|jpg|png))/$1-tw/g;
s|^<A href=".*">(中文&nbsp;\(Big5\))</A>(?=&nbsp;)|$1|;

s/操作系統/作業系統/g;
s/窗口系統/視窗系統/g;
s/服務器/伺服器/g;
s/軟件包(?!裝)/套件/g;
s/郵(遞|件)列表/通信論壇/g;
s/鏡像站點/映射站台/g;
s/鏡像((網)?站)/映射$1/g;
s/網絡對象模型環境/網絡物件模型環境/g;

s/急救盤/急救磁碟/g;
s/(引導|啟動)盤/啟動磁碟/g;
s/安裝盤/安裝磁碟/g;

s/文本文件/純文字檔/g;
s/發布系統/發行套件/g;
s/體系結構/架構/g;
s/萬維網/全球資訊網/g;
s/互聯網/網際網路/g;

# 1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*)“/$1「/);
# 1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*)”/$1」/);
1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*(軟|硬))件/$1體/);
1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*(軟|硬|光|磁))盤/$1碟/);
1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*)內核/$1核心/);
1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*)站點/$1站台/);
1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*)網絡/$1網路/);

# 生怕有人的電腦讀不到「�堙v字。
1 while (s/^((?:[\x00-\x7f]|[\x80-\xff].)*)��/$1裡/);
