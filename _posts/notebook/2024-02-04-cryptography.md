---
title: Cryptography
author: jyt555
date: 2024-02-04
category: pages/notebook
layout: post
mermaid: true
---

# 。

## Starting

### grading policy

50 期末考 | 50 平时作业（查重）

更详细的讲义走这里：[http://cc.zju.edu.cn/bhh/crypto.doc](http://cc.zju.edu.cn/bhh/crypto.doc)

### 主要内容

。编程工具：[http://cc.zju.edu.cn/bhh/VC6_Aegisys.exe](http://cc.zju.edu.cn/bhh/VC6_Aegisys.exe)

。大数库：[http://cc.zju.edu.cn/bhh/openssl.rar](http://cc.zju.edu.cn/bhh/openssl.rar)

。官网：[www.openssl.org](www.openssl.org)

数学基础、古典密码、MD5、SHA-1、RC4、**DES、AES、RSA、ECC**

DES和AES是对称密码学算法（加密解密同一把钥匙），RSA和ECC是非对称的

---

## 数学基础

### 整除

$b = a * k，a \mid b$

### 素数prime 互素relatively prime

gcd(a,b) = 1：a、b 互素，e.g. 4和9

### 最大公约数 greatest common divisor

a、b为整数，且至少有一个不为零，d = gcd(a,b)，则一定存在整数x、y使 a * x + b * y = d

### 模mod 同余congruent

$a=b+n*k\;(k\in Z),\;a\equiv b\mod n$

### 逆元inverse

a是b的**加法模n逆元**：$a+b\equiv 0 \mod n$

a是b的**乘法模n逆元**：$a*b\equiv 1\mod n$，将$b$记作$a^{-1}$

> e.g. $13*x\equiv 1\mod 35 \Leftrightarrow gcd(13,35)=1\Rightarrow \dots\Rightarrow x=27$

---

## 古典密码

### 单表密码

只使用**一张**密码字母表，且明文字母与密文字母有**固定对应关系**。**频率分析法**可以对付单表密码

`Edgar Allan Poe “The Gold-Bug”`, `Arthur Conan Doyle“The Dancing Men”`

#### 加法密码-凯撒密码

e.g. $y=(x+3)\% 26,\;x=(y+23)\%26$

#### 乘法密码

加密算法：$y=x*k\%n$

解密算法：$x=y*k^{-1}\%n$

#### 仿射密码

加密算法：$y=(x*k1+k2)\%n$

解密算法：$x=(y-k2)*k_1^{-1}\%n$

### 多表密码

明文与密文字母没有固定对应关系（同一明文字母对应密文会变）

`Enigma` ：http://cc.zju.edu.cn/bhh/enigma.rar

* 先转动齿轮，再对键盘输入信号进行修改；

* 接线板只影响键盘输入和灯泡输出；

* 密文字母一定**不等于**明文字母（reflector对应必不相同）；

* 明文 -> plugboard -> rotor (3) -> reflector -> rotor(3)**（反查表）** ->plugboard -> 暗文
  
  注意按**逆向路径**经过3个齿轮时要**反查表**；
  
* **Ring Setting**是齿轮内部的初始状态，它们在齿轮转动时不会发生变化。
  
  而齿轮外部的状态**MessageKey**是会随每一次按键而发生变化的。
  
  **Δ = MessageKey - RingSetting**，进入I号齿轮时，需要先加上Δ，**出去时要减掉**
  
* **5**个齿轮使下一个齿轮发生跳转的字母:
  
  QEVJZ：齿轮的当前位置，从左到右对应齿轮I II III IV V
  
  RFWKA：齿轮的下一步位置

| 齿轮 | ABCDEFGHIJKLMNOPQRSTUVWXYZ |
| :--: | :------------------------: |
|  I   | EKMFLGDQVZNTOWYHXUSPAIBRCJ |
|  II  | AJDKSIRUXBLHWTMCQGZNPYFVOE |
| III  | BDFHJLCPRTXVZNYEIWGAKMUSQO |
|  IV  | ESOVPZJAYQUIRHXLNFTGKDCMWB |
|  V   | VZBRGITYUPSDNHLXAWMJQOFECK |

* **double stepping:** 
  
  由Enigma的机械结构决定的，该现象只会出现在中间那个齿轮上
  
  **II当前在E位置, I不管在什么位置**，旋转I都会带动II转

* 密码本给出日期、选择的齿轮和顺序、Ring setting、接线板连接字母对、一串和日期有关的代码
* MessegeKey传递：先通过无线电传明文（假设为ABC），收报方暂时将MessageKey设为该值（ABC）；再把当天MessageKey（假设为XYZ）加密发给对方，对方解密出MessageKey后开始通讯

图灵采用了“已知明文攻击”的方法破解Enigma

---

## hash函数

### MD5

$plaintext\;明文\leftrightarrow ciphertext\;密文$

$message\;报文\rightarrow digest\;摘要$

md5算法算出的结果是32位以16进制表示的数（128位，即16字节）（报文可以无限长，也可以为空）

只能根据报文算出摘要，不能根据摘要算出报文（不属于加密解密，是``单向``的）

相当于``有损压缩``（压缩过程中特意丢弃一些信息），可以用来验证下载的文件是否和原始文件是同一份文件（不是严格一对一的，同一个摘要对应的报文可能有多个，但是`碰撞`的概率非常非常小），也可以保存用户密码到数据库（不存password而是存经md5计算后的代码）

碰撞的`放大`效果：m1(128字节)和m2(128字节)碰撞，则1.exe = 0.exe + m1和2.exe = 0.exe + m2也会碰撞。（文件上传网站时会经过病毒检测，如果发生碰撞则认为是同一份文件，不再进行扫描–>可以通过碰撞放大恶意传病毒文件）

- 切块计算：每次处理64字节的信息（明文）data[64]，计算结果保存在state[4]（即128位摘要）中，count[2]表示原始明文总长度（单位bit，1G内容是1G*8，`count[0] += buf_len<<3`）
- 种子值：state[0] = 0x67452301, state[1] = 0xEFCDAB89, state[2] = 0x98BADCFE, state[3] = 0x10325476（自己想复现上述1.exe与2.exe的碰撞，则这里的种子值应当修改为0.exe的md5结果，且只能做update不能做final）
- count内8字节的信息需要作为填充补到data末尾（前面先跟一个0x80，然后用0x00填充直到剩下给count的8字节）（特殊情况：如果缓冲区buf是空的，即buf长度为0，data里没有数据，先填充0x80，再55个0x00，最后8字节的count值）
- 一般最后只需要做一次灌输，但如果最后一次buf读入超过55字节（不够填充0x80的1字节和count的8字节），则需要两次灌输：第一次灌输data[0]~data[55]，data[56] = 0x80，后面7字节0x00；第二次56字节0x00和8字节count

`破解`方法：`rainbow table`（我的评价是：世界的尽头是‘穷举’）

### SHA

sha-1散列算法计算出来的hash值达160位（20 Byte），比md5多了32位

也是分块计算（64字节，最后一块不足时按照md5的方式进行填充）

数据块最后要补上表示报文总共位数的8字节

---

## 分组密码工作模式与流密码

### 分组密码工作模式

#### 电子密码簿ECB

加密：$C_j=E_k(P_j)$

解密：$P_j=D_k(C_j)$

`electronic codebook`：方便（加密解密过程可以并行处理），但是安全性不是很好（对于相同内容的明文段，加密后得到的密文块相同）

#### 密文块链接模式CBC

C1 = e(P1, key, iv); C2 = e(P2, key, iv’); P1 = P2，但是C1 != C2 // initialization vector是一个随机产生的数，长度与P相同，iv’=C1 //

加密：$C_j=E_k(P_j\oplus C_{j-1} )$

解密：$P_j=D_k(C_j)\oplus C_{j-1}$

`cipher block chaining`：当前块的密文与前一块的密文有关；加密过程只能串行处理；解密过程可以并行处理

#### 密文反馈模式CFB

$C'=E(iv,key),\;C[0]=C'[0] \wedge P[0]$​

$new.iv=\{iv[0],iv[1],\dots,iv[15],C[0]\}$

$new.C'=E(new.iv,key),\;C[1]=new.C'[0]\wedge P[1]$

`cipher feedback`：安全性高，但是效率不高（每次加密一字节，无法并行加密），可以从密文传输的错误中恢复（造成的错误有限）

### 流密码算法RC4

适合网络信息的实时加密和解密（逐字节解密）

- 根据seed_key生成真正要用的key (prepare_key)
- 输入和输出是同一个buf（同一个算法，输出结果写回buf）

---

## DES算法和AES算法

### Data Encryption Standard

明文64bit = 8byte；密钥64bit = 8byte (实际只有56bit)；加密与解密的密钥相同

缺点：密钥太短，差分分析可以攻击des算法，sbox没有公开可能有后门

![](../../assets/notebook/des.bmp)

* (1) 64位明文在进入加密前有一个打乱的过程，此时要用到一张打乱表(static char ip[64])，把64位的顺序打乱,例如:
  ip[0]=58表示源数据中的第58位(实际是第58-1=57位，base 0)要转化成目标数据中的第0位，其中下标代表的是以0为基数的目标位，而数组的元素值代表的是以1为基数的源位;（下标是0到63变化，值是1到64）
* (2) 64位明文经过加密变成密文后还要有一个打乱的过程，此时要用到的打乱表为static char fp[64]; fp[57] = 1表示源第0位变成目标第57位
* (3) 8个**sbox**转化出来32位结果也需要打乱, 这张打乱表为
  static char sbox_perm_table[32];
* (4) 64位密钥要砍掉8位变成56位, 此时要用到一张表:
  static char key_perm_table[56];
* (5) 56位密钥在循环左移后,要提取其中的48位,此时也要用到一张表:
  static char key_56bit_to_48bit_table[48];

56位变48位：100011–》`a[3][1]`:

![](../../assets/notebook/Snipaste_2024-05-06_03-57-42.png)

des算法中位的编号采用大端（从右到左编号，基数为1）：

```c
b[0]		b[1]		b[2]
1011 0110	0101 1111
第1位 第2位 ... 第64位
```

用查表代替打乱（下图），可以提高计算效率，是对代码的优化

![](../../assets/notebook/Snipaste_2024-05-06_01-31-37.png)

智云4-8号38分小结des算法

