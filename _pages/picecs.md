---
title: Picecs
author: jyt555
date: 2024-02-03
category: Jekyll
layout: post
mermaid: true

---

# Markdown

## basic

|      effect       |        code         |         shortcut key         |
| :---------------: | :-----------------: | :--------------------------: |
|     **bold**      |     `**bold**`      | <kbd>Ctrl</kbd>+<kbd>B</kbd> |
| ~~strikethrough~~ | `~~strikethrough~~` |                              |
|     *italic*      |     `*italic*`      |                              |
|        ` `        |         ` `         | <kbd>Ctrl</kbd>+<kbd>E</kbd> |
|        __         |         __          | <kbd>Ctrl</kbd>+<kbd>I</kbd> |

## list

`* something`

* a
* b
* c

`1. something`

1. d
2. e
3. f

`- something`

- g
- h
- i

## plan

`- [ ] to do`

`- [x] have done`

- [ ] to do
- [x] have done

## quote

`> ohhhhhh`

`> > yeeeee`

> ohhhhhh
>
> > yeeeee

## code

行内代码显示：`int a = 0;`

代码块：

```c
int main(void)
{
    int a = 0;
    return 0;
}
```

## link

[bilibili](https://www.bilibili.com)
`[bilibili](https://www.bilibili.com)`

## emoji

:star::cactus:
`:star:` `:cactus:`

## formula

行内公式显示： $x^2=1$

`$x^2=1$`

整块公式显示：

$$
x^2+y+3z^3=10
$$

```c
$$
x^2+y+3z^3=10
$$
```

---

# Mermaid

只列出了[部分]我个人较为常用的图和用法，并不全面。

## stateDiagram -v2

```
stateDiagram-v2
	S0=0,s1=0,z=1 --> S0=0,s1=0,z=1: x=0
	S0=0,s1=0,z=1 --> S0=1,s1=0,z=0: x=1
	S0=1,s1=0,z=0 --> S0=0,s1=1,z=0: x=0
	S0=1,s1=0,z=0 --> S0=0,s1=0,z=1: x=1
	S0=0,s1=1,z=0 --> S0=1,s1=0,z=0: x=0
	S0=0,s1=1,z=0 --> S0=0,s1=1,z=0: x=1
	S0=1,s1=1,z=0 --> S0=0,s1=0,z=1: x=0/1
```



```mermaid
stateDiagram-v2
	S0=0,s1=0,z=1 --> S0=0,s1=0,z=1: x=0
	S0=0,s1=0,z=1 --> S0=1,s1=0,z=0: x=1
	S0=1,s1=0,z=0 --> S0=0,s1=1,z=0: x=0
	S0=1,s1=0,z=0 --> S0=0,s1=0,z=1: x=1
	S0=0,s1=1,z=0 --> S0=1,s1=0,z=0: x=0
	S0=0,s1=1,z=0 --> S0=0,s1=1,z=0: x=1
	S0=1,s1=1,z=0 --> S0=0,s1=0,z=1: x=0/1
```

```
stateDiagram
  [*] --> 状态1
  状态1 --> 状态2 : 事件1
  状态1 --> 状态3 : 事件2
  状态2 --> 状态3 : 事件3
  状态3 --> 状态1 : 事件4
  state 状态1 {
    [*] --> 子状态1
    子状态1 --> 子状态2 : 子事件1
    subgraph 子状态组
      子状态2 --> 子状态3 : 子事件2
    end
    子状态3 --> 子状态1 : 子事件3
  }

```



```mermaid
stateDiagram
  [*] --> 状态1
  状态1 --> 状态2 : 事件1
  状态1 --> 状态3 : 事件2
  状态2 --> 状态3 : 事件3
  状态3 --> 状态1 : 事件4
  state 状态1 {
    [*] --> 子状态1
    子状态1 --> 子状态2 : 子事件1
    subgraph 子状态组
      子状态2 --> 子状态3 : 子事件2
    end
    子状态3 --> 子状态1 : 子事件3
  }

```

## graph

(-或TB或TD：从上往下；LR：从左往右；RL：从右往左)

```
graph TD
A{start} ==Y==> B[sec.1]
A --N--> C[sec.2]
C -.3.-> D{end}
B <-.-> a(a)
B --> b ==> D
id1[方形]---id2(圆边矩形)===id3[[子程序形]]
id4([体育场形]) --5--- id5[(圆柱形)]
id6((圆形))==0===id7{{i}}-.10.-id8[/3/]
```



```mermaid
graph TD
A{start} ==Y==> B[sec.1]
A --N--> C[sec.2]
C -.3.-> D{end}
B <-.-> a(a)
B --> b ==> D
id1[方形]---id2(圆边矩形)===id3[[子程序形]]
id4([体育场形]) --5--- id5[(圆柱形)]
id6((圆形))==0===id7{{i}}-.10.-id8[/3/]

```

## flowchart LR

```
flowchart LR
  subgraph A
  物品-->B[计算1]
  B-->C(判断1)
  C-->|条件1| D[输出结果1]
  C-->|条件2| E[计算2]
  E-->D
  end

  subgraph B
  客户-->F[计算3]
  F-->G(判断2)
  G-->|条件3|H[输出结果2]
  G-->|条件4|I[计算4]
  I-->H
  end

  A-->B
  F-->C
```



```mermaid
flowchart LR
  subgraph A
  物品-->B[计算1]
  B-->C(判断1)
  C-->|条件1| D[输出结果1]
  C-->|条件2| E[计算2]
  E-->D
  end

  subgraph B
  客户-->F[计算3]
  F-->G(判断2)
  G-->|条件3|H[输出结果2]
  G-->|条件4|I[计算4]
  I-->H
  end

  A-->B
  F-->C

```



## sequenceDiagram

```c
sequenceDiagram
participant Alice
participant Bob
Alice ->> John: Hello
Alin -->> Alice:HI
loop Healthcheck
	Bob ->> Bob:Fight against XXX
end
note right of John:Label<br/>HHHH
note left of Alice:d
Bob -> John:YES!
```



```mermaid
sequenceDiagram
participant Alice
participant Bob
Alice ->> John: Hello
Alin -->> Alice:HI
loop Healthcheck
	Bob ->> Bob:Fight against XXX
end
note right of John:Label<br/>HHHH
note left of Alice:d
Bob -> John:YES!
```

## gantt

```
gantt
dateformat YYYY-MM-DD
title ADDING GANTT
excludes weekdays 2023-03-04

section A
completed task:done,des1,2023-03-01,2023-03-02
注意：xxxx:.
active task:active,des2,2023-03-03,2023-03-05
add:/
active task2:active,des3,after des2,4d
add2:.
future task:des4,after des3,5d
future2:des5,after des2,8d

section B
future task:des6,after des3,5d
```



```mermaid
gantt
dateformat YYYY-MM-DD
title ADDING GANTT
excludes weekdays 2023-03-04

section A
completed task:done,des1,2023-03-01,2023-03-02
注意：xxxx:.
active task:active,des2,2023-03-03,2023-03-05
add:/
active task2:active,des3,after des2,4d
add2:.
future task:des4,after des3,5d
future2:des5,after des2,8d

section B
future task:des6,after des3,5d
```

## classDiagram

```
classDiagram
Class01 <|-- AveryLongClass: Cool
Class03 *-- Class04
Class05 o-- Class06
Class07 .. Class08
Class09 --> C2: Where am i?
Class09 --* C3
Class09 --|> Class07
Class07: equals()
Class07: Object[] elemeentData
Class01: size()
Class01: int chimp
Class01: int gorilla
Class08 <--> C2: Cool label
```



```mermaid
classDiagram
Class01 <|-- AveryLongClass: Cool
Class03 *-- Class04
Class05 o-- Class06
Class07 .. Class08
Class09 --> C2: Where am i?
Class09 --* C3
Class09 --|> Class07
Class07: equals()
Class07: Object[] elemeentData
Class01: size()
Class01: int chimp
Class01: int gorilla
Class08 <--> C2: Cool label
```

## pie

```
pie
title ohhhh
"A":3
"b":5
"c":10
```



```mermaid
pie
title ohhhh
"A":3
"b":5
"c":10
```

---

# Docker

[1 小时教你学会 Docker Docker-compose_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV16M4y1H7aH/?spm_id_from=333.337.search-card.all.click&vd_source=dd524065fbd0391ebf51cbd7e60722a1)

## version

`$ docker --version`:

```bash
Docker version 27.3.1, build ce12230
```

`$ docker version`:

```bash
Client:
 Version:           27.3.1
 API version:       1.47
 Go version:        go1.22.7
 Git commit:        ce12230
 Built:             Fri Sep 20 11:42:27 2024
 OS/Arch:           windows/amd64
 Context:           desktop-linux

Server: Docker Desktop 4.36.0 (175267)
 Engine:
  Version:          27.3.1
  API version:      1.47 (minimum version 1.24)
  Go version:       go1.22.7
  Git commit:       41ca978
  Built:            Fri Sep 20 11:41:11 2024
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.7.21
  GitCommit:        472731909fa34bd7bc9c087e4c27943f9835f111
 runc:
  Version:          1.1.13
  GitCommit:        v1.1.13-0-g58aa920
 docker-init:
  Version:          0.19.0
  GitCommit:        de40ad0
```

## 启动/创建

`$ docker run -d -p 8080:80 docker/welcome-to-docker`:

（`-d`：后台运行；`-p`：端口号，宿主地址8080映射到容器的80；`–name test_name`：指定镜像名字，默认随机生成名字）

`[Welcome to Docker](http://localhost:8080/)`:

<img src="../assets/drip/Snipaste_2024-12-27_17-37-22.png" style="zoom:38%;" />

`$ docker ps`：

```bash
CONTAINER ID   IMAGE                      COMMAND                   CREATED       STATUS       PORTS                  NAMES
d97aca38aad8   docker/welcome-to-docker   "/docker-entrypoint.…"   6 hours ago   Up 6 hours   0.0.0.0:8080->80/tcp   sweet_bouman 
```

<img src="../assets/drip/Snipaste_2024-12-27_17-38-53.png" style="zoom:38%;" />

`$ docker run -d --name docker_test docker/welcome-to-docker`后再次查看：

```bash
CONTAINER ID   IMAGE                      COMMAND                   CREATED         STATUS         PORTS                  NAMES
00dce0e23264   docker/welcome-to-docker   "/docker-entrypoint.…"   7 seconds ago   Up 5 seconds   80/tcp                 docker_test    
d97aca38aad8   docker/welcome-to-docker   "/docker-entrypoint.…"   6 hours ago     Up 6 hours     0.0.0.0:8080->80/tcp   sweet_bouman   
```

`$ docker ps -a`：查看所有容器（包括没有up的）

```bash
CONTAINER ID   IMAGE                      COMMAND                   CREATED          STATUS          PORTS     NAMES
00dce0e23264   docker/welcome-to-docker   "/docker-entrypoint.…"   16 minutes ago   Up 16 minutes   80/tcp    docker_test
e86bf1a8ac6d   docker/welcome-to-docker   "/docker-entrypoint.…"   23 minutes ago   Created                   quirky_colden
```

`$ docker stop docker_test`：关闭容器

`$ docker start docker_test`：启动容器

`$ docker restart docker_test`：重启容器

## 删除

`$ docker rm -f sweet_bouman`后再次查看：

（ID和name都是唯一的，可以用于删除）

```bash
CONTAINER ID   IMAGE                      COMMAND                   CREATED         STATUS         PORTS     NAMES
00dce0e23264   docker/welcome-to-docker   "/docker-entrypoint.…"   2 minutes ago   Up 2 minutes   80/tcp    docker_test
```

## 进入容器

`$ docker images`：查看服务器存在的镜像

```bash
REPOSITORY                 TAG       IMAGE ID       CREATED         SIZE
docker/welcome-to-docker   latest    c1f619b6477e   13 months ago   18.6MB
```

`$ docker rmi REPOSITORY:TAG`：通过容器名称和版本号删除镜像（直接使用IMAGE ID也可以）

`$ docker exec -it test_name bash`：

（`-it`：打开容器镜像的终端界面；用ID或name都可以；容器内使用的shell操作，但必须是容器内有的）

进入后`$`前会显示容器ID，也可以通过`$ hostname`查看。

`$ exit`退出容器。

<img src="../assets/drip/Snipaste_2024-12-27_17-52-38.png" style="zoom:38%;" />

## 容器内数据持久化存储

直接对容器内容做修改，删除容器后修改全部丢弃，此时重新创建容器不会保留修改。

`$ docker run -d --name nginx_test -p 8080:80 -v /data/nginx:/opt/nginx/html nginx`

（`-v`：目录挂载，宿主机目录:容器目录）

将宿主机目录映射到容器目录，如果宿主机目录为空，则容器目录内也为空；删除容器不会删除宿主机目录下的内容

## 自己构建镜像



## 报错及解决

> 在cmd或者windows powershell中(管理员运行)，输入`net start com.docker.service`以启动Docker Desktop Service服务
>
> 在windows powershell中输入`cd "C:\Program Files\Docker\Docker"`跳转到Docker Desktop安装路径
>
> 运行命令`.\DockerCli.exe -SwitchDaemon`把docker daemon启动
>
> +[windows 11系统下打开docker 提示 docker engine stopped - DbWong_0918 - 博客园](https://www.cnblogs.com/jokingremarks/p/18156334)

### docker: Error response from daemon:

```bash
docker: Error response from daemon: Get "https://registry-1.docker.io/v2/": net/http: request canceled while waiting for connection (Client.Timeout exceeded while awaiting headers).
```

尝试配置多个镜像源（没解决，发现是HyperV没有开启，开启并重启电脑后转到报错2）

默认配置 Docker Engine 记录：

```code
{
  "builder": {
    "gc": {
      "defaultKeepStorage": "20GB",
      "enabled": true
    }
  },
  "experimental": false
}
```

**Hyper-V**：控制面板-启用或关闭Windows功能-HyperV

另一个[彻底解决]的办法（但是还没尝试）；

[彻底解决docker：docker: Get https://registry-1.docker.io/v2/: net/http: request canceled 报错-CSDN博客](https://blog.csdn.net/2301_79849395/article/details/142829852)

### docker: error during connect:

```bash
docker: error during connect: Head "http://%2F%2F.%2Fpipe%2FdockerDesktopLinuxEngine/_ping": open //./pipe/dockerDesktopLinuxEngine: The system cannot find the file specified.
See 'docker run --help'.
```

[Windows系统安装Docker遇到error during connect: In the default daemon configuration on Windows, the docker-CSDN博客](https://blog.csdn.net/nyasm/article/details/121569182)

```bash
cd "C:\Program Files\Docker\Docker"
DockerCli.exe -SwitchDaemon
```

出现下列报错，开启服务：

<img src="../assets/drip/Snipaste_2024-12-27_19-53-18.png" style="zoom:33%;" />

###  Unit docker.service not found.

```bash
$ sudo systemctl restart docker
[sudo] password for jyt: 
Failed to restart docker.service: Unit docker.service not found.
```

[Failed to start docker.service — 完美解决方法详解 ️_failed to start docker.service: interactive authen-CSDN博客](https://blog.csdn.net/qq_42055933/article/details/142030350)

### 登录不上去

[win docker desktop踩坑及解决方案（拉取镜像失败）_docker desktop无法拉取镜像-CSDN博客](https://blog.csdn.net/weixin_44925711/article/details/143338120)

### running engine: waiting for the Docker API: context deadline exceeded

<img src="../assets/drip/Snipaste_2024-12-28_00-48-44.png" alt="Snipaste_2024-12-28_00-48-44" style="zoom: 50%;" />

[解决windows docker context deadline exceeded问题_running engine: waiting for the vm setup to be rea-CSDN博客](https://blog.csdn.net/qq_51796436/article/details/137679736)

发现不支持代理

<img src="../assets/drip/Snipaste_2024-12-28_00-50-24.png" alt="Snipaste_2024-12-28_00-50-24" style="zoom:33%;" />

[解决“wsl: 检测到 localhost 代理配置，但未镜像到 WSL。NAT 模式下的 WSL 不支持 localhost 代理”_wsl: 检测到 localhost 代理配置,但未镜像到 wsl。nat 模式下的 wsl 不支持-CSDN博客](https://blog.csdn.net/m0_62815143/article/details/141285660)

即上一步（登录不上去）配置了`.wslconfig`之后需要重启wsl：

```cmd
cmd> wsl --shutdown
cmd> wsl
```

### Docker Engine stopped

过一会儿会出现 **running engine: waiting for the Docker API: context deadline exceeded** 的报错，尝试后怀疑是中间开关梯子太多次但是又没有重启wsl（上一步修改之后每次开关梯子wsl都会弹提示说检测到代理更改，请重启之类的）

但是此时vscode连接不上wsl…不过不在wsl也可以运行，再看看先

<img src="../assets/drip/Snipaste_2024-12-28_02-26-00.png" style="zoom:50%;" />

<img src="../assets/drip/Snipaste_2024-12-28_02-27-59.png" style="zoom:50%;" />

## 部署记录

不知道成不成，但是过了Node:14的槛，记录一下

![](../assets/drip/Snipaste_2024-12-28_02-46-54.png)

洗完澡回来怎么还是5//10，我要蛐蛐你了。看在还没有红色报错的份上，先算了。

![](../assets/drip/Snipaste_2024-12-28_03-02-06.png)

进度一直卡着不动（下图）。

![](../assets/drip/Snipaste_2024-12-28_03-30-35.png)

![](../assets/drip/Snipaste_2024-12-28_03-30-59.png)

因为配置了镜像源，所以关闭梯子后再次尝试。感觉这次应该对了。

![](../assets/drip/Snipaste_2024-12-28_03-35-40.png)

![](../assets/drip/Snipaste_2024-12-28_03-44-09.png)

报错显示无法访问https://registry.npmjs.org/body-parser，但是本身项目已经配置成使用淘宝的镜像了，而且packag-lock.json里也找不到这个源的链接。

```bash
D:\PointMe\HW\BS\24fallBS_Lab> npm config get registry
https://registry.npmmirror.com
```

又挂梯子跑了一遍，这个时候前面已经跑过了（大概是这样吧？）很快，然后上面这个问题也没有了，很快进入前端的构建：

![](../assets/drip/Snipaste_2024-12-28_03-53-19.png)

前端最后一步出错：**ERROR  Error: Unknown keyword formatMinimum**

![](../assets/drip/Snipaste_2024-12-28_03-56-59.png)

困了，明天见 > <

[Build failed: Unknown keyword formatMinimum · Issue #6073 · facebook/docusaurus](https://github.com/facebook/docusaurus/issues/6073)

> The error is coming from the Webpack loader `url-loader`, which depends on `schema-utils@3.1.1`, and the latter uses `ajv-keywords@3.5.2`. The `formatMinimum` keyword was removed from this package in v4: https://github.com/ajv-validator/ajv-keywords/releases/tag/v4.0.0. Typically, that shouldn't be an issue, because the right version should be supplied by the package manager; however, in your case, NPM seems to be aggressively flattening the dependency tree and causes a wrong version (`ajv-keywords@5.1.0`) to be used instead.

看起来是依赖的问题，修改之后再跑了一次，还是报同样的错。

![](../assets/drip/Snipaste_2024-12-28_11-35-00.png)

[Release v4.0.0 · ajv-validator/ajv-keywords](https://github.com/ajv-validator/ajv-keywords/releases/tag/v4.0.0)

> Keywords `formatMinimum`/`formatMaximum` and `formatExclusiveMinimum`/`formatExclusiveMaximum` moved to ajv-formats, the latter two were changed to be used independently for exclusive boundaries, not as modifiers.

…不知道怎么解决，`RUN npm run build`的时候会出错（但是在docker之前，本地是能跑的）。直接把这个去掉了

![](../assets/drip/Snipaste_2024-12-28_12-19-22.png)

可以构建，但是启动不了（先启动，然后前端关闭，最后整个关闭）

![](../assets/drip/Snipaste_2024-12-28_12-27-12.png)

前端映射的容器端口不对，修改后，`docker-compose build`

然后重新启动：`docker-compose up -d`（未重启时，端口显示还是错误的那个）

:imp: 修改后要build然后再重启，不能直接down，up

但是容器启动失败`docker logs 24fallbs_lab-frontend-1`查看原因，还是`formatMinimum`的错（也可能是之前几次的错误信息一直存着 ==> 会覆盖，看下面）

后端：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker start b1
b1

D:\PointMe\HW\BS\24fallBS_Lab>docker logs 24fallbs_lab-backend-1  
/usr/src/app/node_modules/undici/lib/core/util.js:623
  const listeners = (obj[kListeners] ??= [])
                                     ^^^

SyntaxError: Unexpected token '??='
    at wrapSafe (internal/modules/cjs/loader.js:1029:16)
    at Module._compile (internal/modules/cjs/loader.js:1078:27)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1143:10)
    at Module.load (internal/modules/cjs/loader.js:979:32)
    at Function.Module._load (internal/modules/cjs/loader.js:819:12)
    at Module.require (internal/modules/cjs/loader.js:1003:19)
    at require (internal/modules/cjs/helpers.js:107:18)
    at Object.<anonymous> (/usr/src/app/node_modules/undici/lib/dispatcher/client.js:8:14)
    at Module._compile (internal/modules/cjs/loader.js:1114:14)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1143:10)
/usr/src/app/node_modules/undici/lib/core/util.js:623
  const listeners = (obj[kListeners] ??= [])
                                     ^^^
```

> 从错误日志来看，问题是由于 Node.js 版本不支持 `??=`（空值合并赋值运算符）语法导致的。`??=` 是 ES2021 引入的新语法，需要 Node.js 15.0.0 或更高版本才能支持。
>
> ---
>
> 你的 `Dockerfile` 中使用了 `node:14` 作为基础镜像，而 Node.js 14 不支持 `??=` 语法。
>
> `undici` 是一个 HTTP 客户端库，它可能依赖了较新的 Node.js 特性。

一个查看的实例：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> npm view undici engines
{ node: '>=20.18.1' }
```

把前后端Dockerfile都改了：`FROM node:16`

现在构建完可以启动前端并正常显示了，但是后端连不上

![](../assets/drip/Snipaste_2024-12-28_13-06-58.png)

前端成功，日志：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker logs 24fallbs_lab-frontend-1

> goodprice@0.1.0 serve
> vue-cli-service serve

 INFO  Starting development server...
 DONE  Compiled successfully in 11043ms5:04:01 AM

                                                                                                                                                             
  App running at:
  - Local:   http://localhost:8080/
  - Network: http://172.18.0.3:8080/

  Note that the development build is not optimized.
  To create a production build, run npm run build.

 WAIT  Compiling...5:04:01 AM                                                                                                                                

Compiling...
 DONE  Compiled successfully in 220ms5:04:01 AM

                                                                                                                                                             
  App running at:
  - Local:   http://localhost:8080/
  - Network: http://172.18.0.3:8080/

Build finished at 05:04:01 by 0.000s 
```

后端失败，日志：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker logs 24fallbs_lab-backend-1
/usr/src/app/node_modules/undici/lib/web/fetch/response.js:528
  ReadableStream
  ^

ReferenceError: ReadableStream is not defined
    at Object.<anonymous> (/usr/src/app/node_modules/undici/lib/web/fetch/response.js:528:3)
    at Module._compile (node:internal/modules/cjs/loader:1198:14)
    at Object.Module._extensions..js (node:internal/modules/cjs/loader:1252:10)
    at Module.load (node:internal/modules/cjs/loader:1076:32)
    at Function.Module._load (node:internal/modules/cjs/loader:911:12)
    at Module.require (node:internal/modules/cjs/loader:1100:19)
    at require (node:internal/modules/cjs/helpers:119:18)
    at Object.<anonymous> (/usr/src/app/node_modules/undici/lib/web/fetch/index.js:11:5)
    at Module._compile (node:internal/modules/cjs/loader:1198:14)
    at Object.Module._extensions..js (node:internal/modules/cjs/loader:1252:10)
```

尝试解决：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker-compose down # 停止并删除所有容器
[+] Running 3/3
 ✔ Container 24fallbs_lab-frontend-1  Removed		1.3s 
 ✔ Container 24fallbs_lab-backend-1   Removed		0.0s 
 ✔ Network 24fallbs_lab_default       Removed		0.3s 

D:\PointMe\HW\BS\24fallBS_Lab> docker image prune -f # 清理未使用的镜像
Deleted Images:
deleted: sha256:f6838f150a295ecf12b427c56b5c15cee3b2b96de39f5ede55abdd65c06360d5
deleted: sha256:a490bf441e539285092f01fb0dcd56281c22661494077020be9c23c2a47b0a6e
deleted: sha256:6f98cbb227b5e10f5be6db21b8473a25d6e6f9fe3685331652fa3eeb386840bc
deleted: sha256:ce30389fff18c8a4d09f66d33fe09d24f776fbe47fee3b69fc7fb8db8aabbc46

Total reclaimed space: 0B

D:\PointMe\HW\BS\24fallBS_Lab> docker-compose build # 重新构建镜像
```

都成功启动了：

![](../assets/drip/Snipaste_2024-12-28_13-14-10.png)

高兴早了，马上又自己关了…

![](../assets/drip/Snipaste_2024-12-28_13-15-37.png)

[Error: ReferenceError: ReadableStream is not defined-CSDN博客](https://blog.csdn.net/Wai_Leung/article/details/141358369)

把前后端Dockerfile都改了：`FROM node:18`（也可以直接用latest，聪明的办法！）

更新日志报错：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker logs 24fallbs_lab-backend-1
Server started on http://localhost:5000
/usr/src/app/config.js:11
  if (err) throw err;
           ^

Error: connect ETIMEDOUT
    at Connection._handleConnectTimeout (/usr/src/app/node_modules/mysql/lib/Connection.js:409:13)
    at Object.onceWrapper (node:events:631:28)
    at Socket.emit (node:events:517:28)
    at Socket._onTimeout (node:net:598:8)
    at listOnTimeout (node:internal/timers:569:17)
    at process.processTimers (node:internal/timers:512:7)
    --------------------
    at Protocol._enqueue (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:144:48)
    at Protocol.handshake (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:51:23)
    at Connection.connect (/usr/src/app/node_modules/mysql/lib/Connection.js:116:18)
    at Object.<anonymous> (/usr/src/app/config.js:10:4)
    at Module._compile (node:internal/modules/cjs/loader:1364:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1422:10)
    at Module.load (node:internal/modules/cjs/loader:1203:32)
    at Module._load (node:internal/modules/cjs/loader:1019:12)
    at Module.require (node:internal/modules/cjs/loader:1231:19)
    at require (node:internal/modules/helpers:177:18) {
  errorno: 'ETIMEDOUT',
  code: 'ETIMEDOUT',
  syscall: 'connect',
  fatal: true
}

Node.js v18.20.5
```

连接数据库超时

[如何将本地MySQL数据库连接Docker容器|极客教程](https://geek-docs.com/mysql/mysql-ask-answer/448_mysql_how_to_connect_locally_hosted_mysql_database_with_the_docker_container.html)

[在docker容器里连接上本地mysql8.0.30数据库的方法_docker连接本地数据库-CSDN博客](https://blog.csdn.net/ylnzzl/article/details/126103526)（没用这个）

![](../assets/drip/Snipaste_2024-12-28_14-51-43.png)

重新构建后后端日志：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker logs 24fallbs_lab-backend-1

> backend@1.0.0 start
> node server.js

Server started on http://localhost:5000
/usr/src/app/node_modules/mysql/lib/protocol/Parser.js:437
      throw err; // Rethrow non-MySQL errors
      ^

Error: ER_BAD_DB_ERROR: Unknown database 'price_comparison_db'
    at Sequence._packetToError (/usr/src/app/node_modules/mysql/lib/protocol/sequences/Sequence.js:47:14)
    at Handshake.ErrorPacket (/usr/src/app/node_modules/mysql/lib/protocol/sequences/Handshake.js:123:18)
    at Protocol._parsePacket (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:291:23)
    at Parser._parsePacket (/usr/src/app/node_modules/mysql/lib/protocol/Parser.js:433:10)
    at Parser.write (/usr/src/app/node_modules/mysql/lib/protocol/Parser.js:43:10)
    at Protocol.write (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:38:16)
    at Socket.<anonymous> (/usr/src/app/node_modules/mysql/lib/Connection.js:88:28)
    at Socket.<anonymous> (/usr/src/app/node_modules/mysql/lib/Connection.js:526:10)
    at Socket.emit (node:events:517:28)
    at addChunk (node:internal/streams/readable:368:12)
    --------------------
    at Protocol._enqueue (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:144:48)
    at Protocol.handshake (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:51:23)
    at Connection.connect (/usr/src/app/node_modules/mysql/lib/Connection.js:116:18)
    at Object.<anonymous> (/usr/src/app/config.js:10:4)
    at Module._compile (node:internal/modules/cjs/loader:1364:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1422:10)
    at Module.load (node:internal/modules/cjs/loader:1203:32)
    at Module._load (node:internal/modules/cjs/loader:1019:12)
    at Module.require (node:internal/modules/cjs/loader:1231:19)
    at require (node:internal/modules/helpers:177:18) {
  code: 'ER_BAD_DB_ERROR',
  errno: 1049,
  sqlMessage: "Unknown database 'price_comparison_db'",
  sqlState: '42000',
  fatal: true
}

Node.js v18.20.5
```

更新mysql的镜像为8.0后，重新报上一个连接超时的错

检查mysql容器配置：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker exec -it db /bin/bash/mysql
OCI runtime exec failed: exec failed: unable to start container process: exec: "/bin/bash/mysql": stat /bin/bash/mysql: not a directory: unknown: Are you trying to mount a directory onto a file (or vice-versa)? Check if the specified host path exists and is the expected type

D:\PointMe\HW\BS\24fallBS_Lab> docker exec -it db /bin/bash      
root@db07506b96e2:/app# mysql -u root -p
bash: mysql: command not found
root@db07506b96e2:/app#
```

表示mySQL客户端没有安装在docker中

gpt说可以自行安装，但是一般使用官方的镜像时都会自带安装，所以把数据库容器的镜像改了试试：`image: mysql:latest`

后端日志：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker logs 24fallbs_lab-backend-1

> backend@1.0.0 start
> node server.js

Server started on http://localhost:5000
/usr/src/app/node_modules/mysql/lib/protocol/Parser.js:437
      throw err; // Rethrow non-MySQL errors
      ^

Error: ER_NOT_SUPPORTED_AUTH_MODE: Client does not support authentication protocol requested by server; consider upgrading MySQL client
    at Sequence._packetToError (/usr/src/app/node_modules/mysql/lib/protocol/sequences/Sequence.js:47:14)
    at Handshake.ErrorPacket (/usr/src/app/node_modules/mysql/lib/protocol/sequences/Handshake.js:123:18)
    at Protocol._parsePacket (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:291:23)
    at Parser._parsePacket (/usr/src/app/node_modules/mysql/lib/protocol/Parser.js:433:10)
    at Parser.write (/usr/src/app/node_modules/mysql/lib/protocol/Parser.js:43:10)
    at Protocol.write (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:38:16)
    at Socket.<anonymous> (/usr/src/app/node_modules/mysql/lib/Connection.js:88:28)
    at Socket.<anonymous> (/usr/src/app/node_modules/mysql/lib/Connection.js:526:10)
    at Socket.emit (node:events:517:28)
    at addChunk (node:internal/streams/readable:368:12)
    --------------------
    at Protocol._enqueue (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:144:48)
    at Protocol.handshake (/usr/src/app/node_modules/mysql/lib/protocol/Protocol.js:51:23)
    at Connection.connect (/usr/src/app/node_modules/mysql/lib/Connection.js:116:18)
    at Object.<anonymous> (/usr/src/app/config.js:10:4)
    at Module._compile (node:internal/modules/cjs/loader:1364:14)
    at Module._extensions..js (node:internal/modules/cjs/loader:1422:10)
    at Module.load (node:internal/modules/cjs/loader:1203:32)
    at Module._load (node:internal/modules/cjs/loader:1019:12)
    at Module.require (node:internal/modules/cjs/loader:1231:19)
    at require (node:internal/modules/helpers:177:18) {
  code: 'ER_NOT_SUPPORTED_AUTH_MODE',
  errno: 1251,
  sqlMessage: 'Client does not support authentication protocol requested by server; consider upgrading MySQL client',      
  sqlState: '08004',
  fatal: true
}

Node.js v18.20.5
```

> 这个错误的原因是 MySQL 8.0 默认使用了 **caching_sha2_password** 认证插件，而你的 Node.js MySQL 客户端（`mysql` 模块）可能不支持这种认证方式。

```cmd
D:\PointMe\HW\BS\24fallBS_Lab\backend> npm install mysql2
```

```javascript
// backend/config.js
const mysql = require('mysql2');  
```

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker-compose restart backend
```

三个容器都显示运行，但是在网页进行登录注册的时候，点击按钮没反应（也不会报错）

检查后端服务，发现正常运行：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker exec -it 24fallbs_lab-backend-1 bash
root@9e000f6e2bcc:/usr/src/app# ps aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.0  0.1 697904 12776 ?        Ssl  07:52   0:00 npm start
root        18  0.0  0.0   2576    16 ?        S    07:52   0:00 sh -c node server.js
root        19  0.2  0.4 21717224 38504 ?      Sl   07:52   0:01 node server.js
root        37  0.0  0.0   4188  3536 pts/0    Ss   08:02   0:00 bash
root        43  0.0  0.0   8112  3928 pts/0    R+   08:02   0:00 ps aux
root@9e000f6e2bcc:/usr/src/app#
```

检查日志，发现认证还是有问题：（修改说法：native_password方式有问题，但是好像不影响？）

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker exec -it 24fallbs_lab-db-1 mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 9.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'jyt555';
ERROR 1524 (HY000): Plugin 'mysql_native_password' is not loaded
```

查看用户认证方式：（上面那说MySQL8.0默认使用的认证方式和这里是一致的，所以应该不是这个问题）

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker exec -it 24fallbs_lab-db-1 mysql -u root -p
Enter password: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 9.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select user, host, plugin from mysql.user;
+------------------+-----------+-----------------------+
| user             | host      | plugin                |
+------------------+-----------+-----------------------+
| root             | %         | caching_sha2_password |
| mysql.infoschema | localhost | caching_sha2_password |
| mysql.session    | localhost | caching_sha2_password |
| mysql.sys        | localhost | caching_sha2_password |
| root             | localhost | caching_sha2_password |
+------------------+-----------+-----------------------+
5 rows in set (0.00 sec)
```

检查容器内数据库，发现没有数据库`price_comparison_db `，原因是没有挂载本地数据目录。

在本地mysql中查找路径：

```sql
mysql> show variables like 'datadir';
+---------------+---------------------------------------------+
| Variable_name | Value                                       |
+---------------+---------------------------------------------+
| datadir       | C:\ProgramData\MySQL\MySQL Server 8.0\Data\ |
+---------------+---------------------------------------------+
1 row in set, 1 warning (0.06 sec)
```

授权问题：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker-compose up -d 
[+] Running 1/1
 ✔ Network 24fallbs_lab_default  Created		0.1s 
 - Container 24fallbs_lab-db-1   Creating		0.0s 
Error response from daemon: Access is denied.
```

修改：

```bash
PS C:\WINDOWS\system32> icacls "C:\ProgramData\MySQL\MySQL Server 8.0\Data" /grant Everyone:F
>>
已处理的文件: C:\ProgramData\MySQL\MySQL Server 8.0\Data
已成功处理 1 个文件; 处理 0 个文件时失败
```

容器数据库还是报错：

```cmd
D:\PointMe\HW\BS\24fallBS_Lab> docker logs 24fallbs_lab-db-1
2024-12-28 08:38:22+00:00 [Note] [Entrypoint]: Entrypoint script for MySQL Server 9.1.0-1.el9 started.
find: '/var/lib/mysql/#innodb_redo': Permission denied
find: '/var/lib/mysql/#innodb_temp': Permission denied
find: '/var/lib/mysql/mysql': Permission denied
find: '/var/lib/mysql/performance_schema': Permission denied
find: '/var/lib/mysql/price_comparison_db': Permission denied
...
```

[Docker加载/var/lib/mysql出现Permission Denied - Mr_伍先生 - 博客园](https://www.cnblogs.com/mr-wuxiansheng/p/14860640.html)

[chown: changing ownership of ‘/var/lib/mysql/‘: Permission denied_chown: changing ownership of permission denied-CSDN博客](https://blog.csdn.net/miachen520/article/details/122389701)

> 在 Windows 系统中，不会安装或启用 SELinux（Security-Enhanced Linux）。SELinux 是专为 Linux 系统设计的安全模块，因此无论是在 Windows、WSL（Windows Subsystem for Linux）还是其他 Windows 环境中，您都不需要关闭 SELinux。

呵呵呵搞不出来

还是数据库连接有问题。决定先不挂载本地数据库，直接在docker里面部署。

[docker 连接数据库进入容器里连接数据库 docker连接本地数据库_mob64ca140f29e5的技术博客_51CTO博客](https://blog.51cto.com/u_16213679/11811632)

> [MySQL 异常: "Host 'xxx' is not allowed to connect to this MySQL server"-CSDN博客](https://blog.csdn.net/mazaiting/article/details/106661158)

[吐血总结，花了5个小时终于解决了docker数据库连接问题(日志记录)_docker连接数据库-CSDN博客](https://blog.csdn.net/2302_79169315/article/details/142069326)

尝试修改网络，后端报错：

![](../assets/drip/Snipaste_2024-12-29_02-23-03.png)

查看数据库的ip地址，发现后端连接是正确的：

```bash
D:\PointMe\HW\BS\24fallBS_Lab> docker exec -it 24fallbs_lab-db-1 bash            
bash-5.1# cat etc/hosts
127.0.0.1       localhost
::1     localhost ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
172.20.0.2      394e0260d746
bash-5.1#
```

此时数据库重建了，里面还没有数据表，但是新建了表之后还是报同样的错。

但是从后端容器是能连接上mysql的：

```bash
D:\PointMe\HW\BS\24fallBS_Lab> docker exec -it 24fallbs_lab-backend-1 bash 
root@befb7bb64386:/usr/src/app# apt-get update && apt-get install -y default-mysql-client 
...
root@befb7bb64386:/usr/src/app# mysql -h 24fallbs_lab-db-1 -u root -p  
Enter password: 
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 9.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> show databases;
+---------------------+
| Database            |
+---------------------+
| information_schema  |
| mysql               |
| performance_schema  |
| price_comparison_db |
| sys                 |
+---------------------+
5 rows in set (0.117 sec)
```

使用健康检查，还是不行呢。

【提交了一条git记录作为存档：docker容器内输命令能连接mysql，但是直接运行不行】



:star2: 要不看看这个配吧：

[Docker Compose部署vue+node+mysql项目_docker部署 mysql + node 项目-CSDN博客](https://blog.csdn.net/LSlscool/article/details/133391301)



:o:电脑空间太少了，打算转战服务器了。

[【Vue.js+Node.js+MySQL】项目部署到云服务器，详细到哭。_vue+node+mysql虚拟机部署教程-CSDN博客](https://blog.csdn.net/liangziqi233/article/details/120078906)

[【vue3+node+mysql】从开发到部署上线 ✌_vue3 mysql-CSDN博客](https://blog.csdn.net/PlutoZML/article/details/132064055)

[【带小白做毕设】18. SpringBoot+Vue项目部署上线_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1ek4y1A7pc/?share_source=copy_web&vd_source=7a88a093c49aa0b2ba657103442845b8)

![](../assets/drip/Snipaste_2025-01-01_21-06-18.png)

宝塔外网面板打不开：

[宝塔网站访问不上去？找了很多教程不管用？可能是因为阿里云服务把宝塔端口号改了！_哔哩哔哩_bilibili](https://www.bilibili.com/video/BV1Sa4y1U7kr/?spm_id_from=333.337.search-card.all.click&vd_source=dd524065fbd0391ebf51cbd7e60722a1)

宝塔里装不了MySQL：根据网上教程在宝塔里删除内存判定条件

导出数据库示例：（路径必须存在，不会自动新建文件夹）

```cmd
C:\Program Files\MySQL\MySQL Server 8.0\bin> mysqldump -u root -p price_comparison_db > D:\bsdb.sql
Enter password: ******
```

数据库打不开：

[宝塔面板数据库出现405 Not Allowed 错误的原因和解决办法-CSDN博客](https://blog.csdn.net/ibibao/article/details/125924260)
PHP更高版本的下不下来，只能PHP7.4，根据要求把phpMyAdmin改成5.0版后还是405，解决办法：phpMyAdmin设置里开启SSL（这里设置的887）并在安全中把对应端口打开。

导入数据库时报错【#1273 - Unknown collation: 'utf8mb4_0900_ai_ci'】：

[[ERR\] 1273 - Unknown collation: 'utf8mb4_0900_ai_ci'_怎么用浏览器控制台修改职教云版本-CSDN博客](https://blog.csdn.net/yinzitun7947/article/details/89917611)

教程中启动Node.js的应用下架了，解决方法：

[腾讯云轻量应用服务器上部署Node.js项目并绑定域名-CSDN博客](https://blog.csdn.net/qq_30765565/article/details/130300265)

呵呵什么教程啊，完全就是一坨…

把前端也按照node.js的方法配到www/wwwroot了

前后端都显示运行，但是端口显示未被占用：

![](../assets/drip/Snipaste_2024-12-30_03-23-32.png)

![Snipaste_2024-12-30_03-23-54](../assets/drip/Snipaste_2024-12-30_03-23-54.png)

神经…哭完突然显示了：

![](../assets/drip/Snipaste_2024-12-30_03-26-49.png)

但是后端还是不行，端口也显示未被占用 => 添加到监听列表里：

[【新提醒】【已解答】放行端口显示未使用 - Linux面板 - 宝塔面板论坛](https://www.bt.cn/bbs/thread-79211-1-1.html)

还是不行，应该就是最开始启动时的问题：

![](../assets/drip/Snipaste_2024-12-30_04-18-33.png)

另一个问题：

![](../assets/drip/Snipaste_2024-12-30_04-44-50.png)

解决：[Vue3 报 WebSocket connection to ‘ws://x.x.x.x:8080/ws‘ failed 的错误_websocket_ゞ 随性-腾讯云开发者社区](https://tencentcloud.csdn.net/6579675828cf1d21b51fb50d.html?dp_token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6NzkwMTkxMCwiZXhwIjoxNzM2MTEwNDQzLCJpYXQiOjE3MzU1MDU2NDMsInVzZXJuYW1lIjoid2VpeGluXzcyNzQ5MzQ5In0.Z160ygCIY8QXxY8OasLXDkJsvf8NYEXFxNYx77hSE1U)但是页面没错，先不改了，先解决后端的问题。

找到了一个新的帖子，试试：

[【新提醒】【待反馈】安装puppeteer安装不上 - Linux面板 - 宝塔面板论坛](https://www.bt.cn/bbs/thread-141151-1-1.html)

在Node模块管理里面安装上了

![](../assets/drip/Snipaste_2024-12-30_05-02-56.png)

但是不会用…神经 [搜索 - 宝塔面板论坛](https://www.bt.cn/bbs/search.php?mod=forum&searchid=521&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=puppeteer) 感觉就是服务器的问题，不管了，打算阉割爬虫

放置阉割版后端的时候显示数据库连接有问题，因为宝塔里新建的数据库用户名不是root，修改：
![](../assets/drip/Snipaste_2024-12-30_07-25-58.png)

现在是服务都能开起来（要刷新，可以在finalshell里/etc/init.d/bt restart），但是前端连接不上后端：

![](../assets/drip/Snipaste_2024-12-30_07-36-52.png)

> 最开始看的比较老的csdn教程里是修改了nginx配置的，但是感觉可能不太行
>
> （尝试）修改并重载配置：![](../assets/drip/Snipaste_2024-12-30_04-07-50.png)

直接把前端的 http://localhost:5000/api 改成 https://124.220.75.7:5000/api 了，

报错（解决：https改成http [游览器出现net::ERR_SSL_PROTOCOL_ERROR错误的解决_net::err ssl protocol error-CSDN博客](https://blog.csdn.net/qq_41967899/article/details/90442946)）：

![](../assets/drip/Snipaste_2024-12-30_07-40-41.png)

可以连后端，调用数据库了，解决一下前面的socket通信报错问题（算了能跑就行不管了）：

![](../assets/drip/Snipaste_2024-12-30_07-47-48.png)

[WebSocket connection to ‘ws://x.x.x.x:8080/ws‘ failed:报错-CSDN博客](https://blog.csdn.net/weixin_62328829/article/details/126995531)

看起来也能解决上面地址的问题，但是懒得看了，下次吧





路径正确但是网页图片不显示的问题：

[(已解决) Github无法显示图像问题_github不显示图片-CSDN博客](https://blog.csdn.net/weixin_52836217/article/details/139797172)

懒得搞了，再说吧
