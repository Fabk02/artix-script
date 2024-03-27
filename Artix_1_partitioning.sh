#!/bin/bash
fdisk /dev/sda
g
n
1

+512M
n
2

+2G
n
3


t
1
1
t
2
19
w