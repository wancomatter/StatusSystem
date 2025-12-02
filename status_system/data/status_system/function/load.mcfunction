# forceload
    execute in status_system: run forceload add -1 -1 0 0
# 0-0-0-0-1314召喚用
    execute in status_system: run summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,4884],Marker:1b,Invisible:1b}

# データパックが初期化されていない場合、初期化実行
    execute unless data storage status_system: initialized run schedule function status_system:initialize 2t replace
