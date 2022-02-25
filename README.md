### 建立应用程式的容器镜像

`docker build -t zefey/todolist-example .`

### 启动一个应用程序容器

`docker run -dp 3000:3000 zefey/todolist-example`

- -d -以分离模式运行容器（在后台）
- -p 3000:3000 -将主机的端口3000映射到容器中的端口3000
- zefey/todolist-example -要使用的图像

### 更新源代码

1.使用docker ps命令获取容器的ID 。

`docker ps`

2.使用docker stop命令停止容器。

```
 # Swap out <the-container-id> with the ID from docker ps
 docker stop <the-container-id>
```

3.容器停止后，可以使用以下docker rm命令将其删除。

`docker rm <the-container-id>`

### 启动更新的应用程序容器

`docker run -dp 3000:3000 zefey/todolist-example`