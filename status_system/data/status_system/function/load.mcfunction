# forceload
    execute in status_system: run forceload add -1 -1 0 0
# 0-0-0-0-1314召喚用
    schedule function status_system:core/summon_armor_stand 2t replace

# データパックが初期化されていない場合、初期化実行
    execute unless data storage status_system: initialized run schedule function status_system:initialize 2t replace
