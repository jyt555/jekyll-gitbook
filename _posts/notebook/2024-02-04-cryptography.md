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

更详细的讲义走这里：http://cc.zju.edu.cn/bhh/crypto.doc

### 主要内容

。编程工具：http://cc.zju.edu.cn/bhh/VC6_Aegisys.exe

。大数库：http://cc.zju.edu.cn/bhh/openssl.rar

。官网：www.openssl.org

数学基础、古典密码、MD5、SHA-1、RC4、**DES、AES、RSA、ECC**

DES和AES是对称密码学算法（加密解密同一把钥匙），RSA和ECC是非对称的

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

a是b的**乘法模n逆元**：$a*b\equiv 1\mod n$

> e.g. $13*x\equiv 1\mod 35 \Leftrightarrow gcd(13,35)=1\Rightarrow \dots\Rightarrow x=27$

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

解密算法：$x=(y-k2)*k^{-1}\%n$

### 多表密码

明文与密文字母没有固定对应关系（同一明文字母对应密文会变）

`Enigma` ：http://cc.zju.edu.cn/bhh/enigma.rar

* 先转动齿轮，再对键盘输入信号进行修改；
* 接线板只影响键盘输入和灯泡输出；
* 密文字母一定**不等于**明文字母（reflector对应必不相同）；
* 明文 -> plugboard -> rotor (3) -> reflector -> rotor(3) ->plugboard -> 暗文
  注意按**逆向路径**经过3个齿轮时要**反查表**；
* **Ring Setting**是齿轮内部的初始状态，它们在齿轮转动时不会发生变化。
  而齿轮外部的状态**MessageKey**是会随每一次按键而发生变化的。
  **Δ = MessageKey - RingSetting**，进入I号齿轮时，需要先加上Δ
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

## hash函数

