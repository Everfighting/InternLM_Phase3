# 8G 显存玩转书生大模型 Demo
## 基础任务
> 使用 Cli Demo 完成 InternLM2-Chat-1.8B 模型的部署，并生成 300 字小故事，记录复现过程并截图。
## 进阶任务
> 使用 LMDeploy 完成 InternLM-XComposer2-VL-1.8B 的部署，并完成一次图文理解对话，记录复现过程并截图。
> 使用 LMDeploy 完成 InternVL2-2B 的部署，并完成一次图文理解对话，记录复现过程并截图。



基础任务操作：
1、进行相关环境的配置和工具包的安装
![](./src/开发机选择.png)
![](./src/进入开发机.png)
因为已经内置好了环境，只需要激活环境即可

```conda activate /root/share/pre_envs/icamp3_demo```

2、加载本地模型，进行命令行推理
创建文件夹和脚本，脚本代码解读
![](./src/代码解析.png)

3、启动模型进行推理
![](./src/模型推理效果.png)

4、任务完成，300字的小故事
![](./src/生成300字小故事.png)

streamlit可视化进行推理结果的展示：

1、Streamlit Web Demo 部署 InternLM2-Chat-1.8B 模型
![](./src/streamlit展示.png)

2、进行端口转发
![](./src/端口查找.png)
![](./src/本地端口转发.png)
![](./src/streamlit结果.png)
![](./src/streamlit代码解析.png)



进阶任务操作：

1、LMDeploy 部署 InternLM-XComposer2-VL-1.8B 模型

![](./src/部署InternLM-Xcomposer2-VL.png)

进行图文问答：
![](./src/图片描述Xcomposer-VL.png)


2、LMDeploy 部署 InternVL2-2B 模型

![](./src/图片描述Xcomposer-VL.png)

进行图文问答结果：
![](./src/VL2版本的结果.png)

InternVL2-2B 模型的回复结果更符合真实场景。
