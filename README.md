# FactorioIronManExtend
异星工厂mod   钢铁侠扩展

## 功能
- 钢铁侠mod翻译



## 将钢铁侠盔甲设置为太空可用
### 分析流程
1. 找到SE中生命维持相关提示`lifesupport_no_spacesuit=[color=yellow]你没有装备推进器套装。[/color] 你的生命支持设备在没有一个的情况下无法在太空中工作。`
2. 找到判断代码`if data.has_spacesuit then`
3. `if util.table_contains(name_thruster_suits, armor_inv[1].name) then`当有值时太空可用
4. control.lua代码
    ```lua
    name_thruster_suits = {
        mod_prefix.."thruster-suit",
        mod_prefix.."thruster-suit-2",
        mod_prefix.."thruster-suit-3",
        mod_prefix.."thruster-suit-4",
    }
    base_space_thrust = 1
    thruster_suit_thrust = {
        [mod_prefix.."thruster-suit"] = 2,
        [mod_prefix.."thruster-suit-2"] = 3,
        [mod_prefix.."thruster-suit-3"] = 4,
        [mod_prefix.."thruster-suit-4"] = 5,
    }
    ```
