# 闯关任务

## 1、完成SSH连接与端口映射并运行hello_world.py

熟悉相关的开发环境，初期先选取10%A100服务器，创建名称和相关的基础镜像环境。

![选择服务器](./ssh_src/选择服务器.png)

开机之后使用ssh连接进入服务器, 可以配置密钥方便登录，将本地生成的公钥加入到开发机平台上。 

![配置连接密钥](./ssh_src/配置连接密钥.png)

连接成功后, 使用nvidia-smi命令查看GPU情况。

![SSH远程连接](./ssh_src/SSH远程连接.png)

页面展示的时候要进行本地对远程服务器的转发。

![端口转发](./ssh_src/端口转发.png)

编写展示页面的hello_world.py文件, 使用gradio库进行展示。

![创建展示页面](./ssh_src/创建展示页面.png)

安装相关gradio安装包。

![gradio安装成功](./ssh_src/gradio安装成功.png)

运行hello_world.py文件, 在本地浏览器中输入http://localhost:7860进行展示。

![启动命令](./ssh_src/启动命令.png)

展示效果
![gradio页面展示](./ssh_src/gradio页面展示.png)



## 2、可选任务 1：将Linux基础命令在开发机上完成一遍

Linux相关指令

![Linux相关指令.png](./linux_src/Linux相关指令.png)

Linux指令2

![Linux指令2.png](./linux_src/Linux指令2.png)

conda相关的信息

![conda相关的信息.png](./linux_src/conda相关的信息.png)

显卡信息对照表

![显卡信息对照表.PNG](./linux_src/显卡信息对照表.PNG)

显卡情况

![显卡情况.png](./linux_src/显卡情况.png)

查看系统相关信息

![查看系统相关信息.png](./linux_src/查看系统相关信息.png)

tmux的相关操作
安装tmux
![安装tmux.png](./linux_src/安装tmux.png)

tmux相关用法
![tmux相关用法.png](./linux_src/tmux相关用法.png)


- **启动新的 `tmux` 会话**：

    `tmux`

- **启动新的 `tmux` 会话并指定名称**：

    `tmux new -s session_name`

- **退出当前 `tmux` 会话**：

    `exit`

- **列出所有 `tmux` 会话**：

    `tmux ls`

- **重新连接到已存在的会话**：

    `tmux attach -t session_name`

- **切换到另一个会话**：

    `tmux switch -t session_name`

- **杀死一个会话**：

    `tmux kill-session -t session_name`



## 3、可选任务 2：使用 VSCODE 远程连接开发机并创建一个conda环境
安装VSCODE连接插件
![VSCODE插件.png](./ssh_src/VSCODE插件.png)

连接成功
![VSCODE连接](./ssh_src/VSCODE连接.png)

创建新的conda环境

`conda create --name myenv python=3.8`

查看虚拟环境命令

`conda env list`
`conda info -e`
`conda info --envs`


## 4、可选任务 3：创建并运行test.sh文件

创建还原虚拟环境的shell脚本： 

![还原环境的sh脚本](./linux_src/还原环境的sh脚本.png)

给予权限，执行相关脚本，还原xtuner环境

![还原xtuner环境](./linux_src/还原xtuner环境.png)

相关脚本代码分析：
    - 脚本定义了一个导出环境和恢复创建环境的方法。
    - 在运行时首先检查参数是否足够。
    - 参数正确则运行相关指令。