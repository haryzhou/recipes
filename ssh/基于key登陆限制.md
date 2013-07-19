###  修改只能用key登录服务器

1. 将你自己机器的主目录下的.ssh/id_rsa.pub的公钥拷贝到服务器的authorized_keys

2. 在服务器上vim /etc/ssh/sshd_config, 修改下面配置，指定为no, 那么不允许通过密码进行登录了

   ```
   # Change to no to disable tunnelled clear text passwords
   PasswordAuthentication no
   ```
   
3. 重启sshd

