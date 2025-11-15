# 読み込まれていないなら再schedule
    execute in status_system: unless loaded 0 0 0 run return run schedule function status_system:core/summon_armor_stand 1t replace
# 0-0-0-0-1314召喚
    execute in status_system: run summon armor_stand 0.0 0.0 0.0 {UUID:[I;0,0,0,4884],Marker:1b,Invisible:1b}
