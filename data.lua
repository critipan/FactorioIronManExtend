-- 加载配置文件
require("config")

-- 标志区，用于指示可选mod是否存在
flag_ironman = data.raw.item["arc-reactor"] ~= nil




-- 执行加载操作

if not flag_ironman then
    require("prototypes.arc-reactor")
end
