Fork 以后修改 build.sh 可以自定义版本号和选择构建 tags

在 debian 11 系统上测试运行正常，需要安装 libevent-2.1-7 才能使用 tor 出站。

systemd 服务可能无法正常重启，要一直等默认的 60 秒超时，可以在 [Service] 项里面加上 "TimeoutStopSec=10" 凑合一下。

tor 出站配置示例：

    {
      "type": "tor",
      "tag": "tor-out",
      "data_directory": "/etc/sing-box/.cache/tor"
    }
