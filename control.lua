-- 常量区
SE_NAME = "space-exploration"


-- 将钢铁侠盔甲添加到se的太空可用列表
add_iron_armor_to_se = function() 
  -- TODO 将API名称改为SE新增的相关API名称
  api_name = "set_thruster_suit"
  if(remote.interfaces[SE_NAME][api_name]) then
    remote.call(SE_NAME, api_name, {name="iron-armor", thrust=6})
  end
end

script.on_init(add_iron_armor_to_se)
script.on_load(add_iron_armor_to_se)
