# Running [whistle](https://github.com/avwo/whistle) in docker container

## Requirements

 * docker
 * docker-compose

## Usage

### 运行服务

```bash
docker-compose up -d
```

访问 <http://localhost:8899> 进入 whistle web 页面。

### Tips

本地的 `$HOME/Downloads` 目录已被挂载到容器的 `/downloads`，并且使用 `/downloads` 作为 whistle 运行时的工作目录。所以在使用本地 Downloads 中的文件做替换时，whistle Rules 中的替换路径可以做一些简化，如下：

```
# 以下两种替换路径等价
PATTERN file://./FILE_FROM_DOWNLOADS
PATTERN file:///downloads/FILE_FROM_DOWNLOADS
```

设置了访问界面的账号和密码（尝试过用环境变量传，没生效），数据如下：
- name=admin
- password=root@654321...

## Docker url
[https://hub.docker.com/r/yinzhuoqun/whistle-docker/tags](https://hub.docker.com/r/yinzhuoqun/whistle-docker/tags)
