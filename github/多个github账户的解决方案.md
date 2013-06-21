# 多个github账户的解决方案

## 问题描述

1. 你有两个github用户分别为: haryzhou, harygithub
2. 你希望在本地一个用户下同时使用这个两个github用户

## 解决方案

1. 产生公私钥对: `ssh-keygen -i ~/.ssh/hg`
2. 编辑~/.ssh/config文件

   ```
   host hg
       user git
       hostname github.com
       port 22
       PreferredAuthentications publickey
       identityfile ~/.ssh/hg
   ```

3. 将~/.ssh/hg.pub配置到你harygithub账户中
4. hg在harygithub中生效: `ssh -T git@hg`
5. 开始使用

   ```
   # 以harygithub访问
   git clone hg:harygithub/zdemo.git
   # 以haryzhou访问
   git clone git@github.com:haryzhou/recipes.git
   ```

