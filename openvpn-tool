> docker-compose不是重点，这部分可以照搬官网提供的docker使用。

## docker-compose.yml
```yml 
services:
  openvpn-as:
    #build: .
    image: openvpn/openvpn-as
    container_name: openvpn-as
    volumes:
      - ./data:/openvpn
    ports:
      - 50943:943
      - 50443:443
      - 1194:1194/udp
    cap_add:
      - NET_ADMIN
      - MKNOD
      - NET_RAW
    devices:
      - /dev/net/tun:/dev/net/tun
    restart: always
```
疑难问题：
 1. 登录admin时点击`agree`无反应
进入容器执行如下三个命令，之后点击agree即可。
```bash
# docker exec -it openvpn-as /bin/bash
# /usr/local/openvpn_as/scripts/sacli --key "vpn.server.daemon.tcp.n_daemons" --value "1" ConfigPut
# /usr/local/openvpn_as/scripts/sacli   --key "vpn.server.daemon.udp.n_daemons" --value "1" ConfigPut
# /usr/local/openvpn_as/scripts/sacli  start
```
 2. 主要配置
 更改 Server Name:
 Configuration -> Network Settings 
 ![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/62299df8baf64272a80ba6ac166ff54b.png)

 3. 更改访问服务器内网IP地址
  Configuration → VPN Settings → Routing
  关注这两部分信息
```bash
Routing
Should VPN clients have access to private subnets (non-public networks on the server side)?

Specify the private subnets to which all clients should be given access (one per line):
```

![在这里插入图片描述](https://i-blog.csdnimg.cn/direct/feecc1addb314bd4bc8862bec3126796.png)
4. 免账号登录
勾选后使用工具链接vpn时自动登录账号。
![](https://i-blog.csdnimg.cn/direct/560c6aec007d4f51a50264210be6dcff.png)
5. [OpenVpn Access Server 增加Allowed VPN Connections人数限制](https://blog.csdn.net/zhangkaiadl/article/details/140874862)
6. 如果更改内网IP，可能需要配置允许 IP 转发 + NAT 转发流量，自行处理。
