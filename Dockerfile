FROM node:lts-alpine

LABEL org.opencontainers.image.authors="yinzhuoqun<zhuoqun527@qq.com>"

WORKDIR /downloads

RUN npm install -g whistle \
    && npm i -g whistle.yzq-pipe

ARG port=8899

EXPOSE ${port}
# 用 run 启动，如果用 start 启动立马就会退出容器；使用账号密码且作为 ENV，无法验证通过
CMD [ "whistle", "run", "-p", "${port}", "-n", "admin", "-w", "root@654321..." ]
