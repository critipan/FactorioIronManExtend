# [模组帮助文档](https://lua-api.factorio.com/latest/)

## 模组装载阶段
- 设置阶段
    设置阶段在游戏启动期间进行，允许模组定义他们需要的设置原型
- 原型阶段
    原型阶段也发生在游戏启动期间，目的是为游戏提供原型，原型是制作机器、配方等的模板
- 运行时阶段
    运行时阶段与正常游戏玩法一起进行，并允许以多种方式与游戏世界进行交互。它基于为模组做出反应而触发的事件，API 功能通过各种类的对象提供。

## Mod特殊操作
- `mods["mod_name"] ~= nil` 判断是否启用其他mod
- `data.raw` 原型阶段的数据
    