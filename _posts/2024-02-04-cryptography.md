---
title: Cryptogra
author: jyt555
date: 2024-02-04
category: pages/notebook
layout: post
mermaid: true
---

### grading policy

50 期末考 + 50 平时作业（查重）

### 主要内容

。编程工具：http://cc.zju.edu.cn/bhh/VC6_Aegisys.exe

。大数库：http://cc.zju.edu.cn/bhh/openssl.rar

。官网：www.openssl.org

数学基础、古典密码、MD5、SHA-1、RC4、**DES、AES、RSA、ECC**

DES和AES是对称密码学算法（加密解密同一把钥匙），RSA和ECC是非对称的

# 数学基础

## 整除

b = a * k，a | b

## 素数和互素

gcd(a,b) = 1：a、b 互素，e.g. 4和9

## 最大公约数 greatest common divisor

a、b为整数，且至少有一个不为零，d = gcd(a,b)，则一定存在整数x、y使 a * x + b * y = d

## 模mod 同余congruent

$a=b+n*k(k\in Z),a\equiv b\mod n$

## 逆元inverse

a是b的**加法模n逆元**：$a+b\equiv 0 \mod n$

a是b的**乘法模n逆元**：$a*b\equiv 1\mod n$

> e.g. $13*x\equiv 1\mod 35 \Leftrightarrow gcd(13,35)=1\Rightarrow \dots\Rightarrow x=27$

# 古典密码

## 单表密码

只使用**一张**密码字母表，且明文字母与密文字母有**固定对应关系**。**频率分析法**可以对付单表密码

Edgar Allan Poe “The Gold-Bug”, Arthur Conan Doyle“The Dancing Men”

### 加法密码-凯撒密码

e.g. $y=(x+3)\% 26,x=(y+23)\%26$

### 乘法密码

### 仿射密码

$y=(x*k1+k2)\%$

## 多表密码

明文与密文字母没有固定对应关系（同一明文字母对应密文会变）

Enigma
