---
title: 捣鼓很久的看板娘（live2d-widget配置）
date: 2022-02-05 18:42:07
categories: 
  - 网站
tags: 
  - live2d
  - code
  - javascript
---

## 前言
~~哪个男孩不想要一个自己的看板娘呢？~~

老早听说了[live2d-widget](https://github.com/stevenjoezhang/live2d-widget)这个项目，捣鼓了半天。。。
为了帮助大家少走弯路，我就把这篇博客挂这儿了

***

## 正文
### 准备
首先你要有`一台静态资源服务器`或`CDN`，或者可以白嫖JSDelivr。
下面仅介绍Github \+ JSDelivr的方式：

#### 1. 创建脚本仓库
  `fork` [live2d-widget](https://github.com/stevenjoezhang/live2d-widget) 仓库

#### 2. 创建模型仓库
  新建Github仓库，名字随意（比如`live2d-models`）

### 配置

#### 3. 编辑脚本仓库
  进入刚 fork 的仓库

  - 按`.`或将地址栏的`github.com`换成`github.dev`（官方）或`github1s.com`（国内非官方）
  - clone 下来本地修改
  
  打开`autoload.js`，将
  ```js
  const live2d_path = "https://cdn.jsdelivr.net/gh/stevenjoezhang/live2d-widget@latest/";
  ......
			cdnPath: "https://cdn.jsdelivr.net/gh/fghrsh/live2d_api/"
  ```
  这两行替换为
  ```js
  const live2d_path = "https://cdn.jsdelivr.net/gh/<yourname>/live2d-widget@master/";
  ......
			cdnPath: "https://cdn.jsdelivr.net/gh/<yourname>/<yourmodelreponame>@master/"
  ```
  **注意：**末尾斜杠`/`不能丢
  示例：<https://cdn.jsdelivr.net/gh/bakajzon/live2d-widget@master/autoload.js>
  可参照[这里](https://github.com/stevenjoezhang/live2d-widget/blob/master/README.md)
  
  保存，提交！
  - 在线
    ![](/images/kanban0-editor.png)

  - 本地
  ```bash
  git add .
  git commit -m '<message>'
  git push
  ```
  什么，你没有[git](https://git-scm.com/)？: 用<github1s.com>吧

#### 4. 编辑模型仓库
  准备一些[模型](https://github.com/search?q=live2d+model&type=)
  仿上述方法打开编辑器
  
  模型仓库目录结构：
  ```
  /model_list.json
  /model/
  /model/a_model/...
  /model/b_model0/...
  /model/b_model1/...
  /model/anime_c/char_d/...
  ```
  
  托！
  ![](/images/kanban0-model.png)
  
  编辑`model_list.json`：
  ```json
  {
    "models":[
	"a_model",
	[
	  "b_model0",
	  "b_model1"
	],
	"anime_c/char_d"
	],
	"messages": {
	  "这里是A",
	  "B，请多指教",
	  "Hi~，我是D哦~"
	}
  }
  ```
  **格式说明：**`models`中一个元素对一个角色，`messages`中对应文本元素为该角色出场词。若一个角色有多套模型，则用`[]`逐个列出（如上述示例的B模型）
  
  保存！提交！
  
  *注：*JSON格式中，每个文本都要用半角`"`框起来，元素间的`,`不能忘，空格不是必须的
  可参照[这里](https://github.com/fghrsh/live2d_api/blob/master/README.md#%E6%B7%BB%E5%8A%A0%E6%A8%A1%E5%9E%8B)

### 最后

#### 5. 插♂入你的网站
  - 自建服务器
  `<script src="https://<your website>/<yourjsdir>/autoload.js"></script>`
  - JSDelivr CDN
  `<script src="https://cdn.jsdelivr.net/gh/<yourname>/live2d-widget@master/autoload.js"></script>`
  
  将上述HTML代码放到你的网站`<head>`中就好啦！
  
  可参照[这里](https://github.com/stevenjoezhang/live2d-widget/blob/master/README.md#using-cdn)
***

## 展示
![智乃酱~AWSL](/images/kanban0-photo.png)

## 相关项目
  Github:
    [live2d-widget](https://github.com/stevenjoezhang/live2d-widget)
    [我的看板娘](https://github.com/BakaJzon/live2d-widget)
    [我的模型仓库](https://github.com/BakaJzon/live2d_api)
	[Github1s](https://github.com/conwnet/github1s)