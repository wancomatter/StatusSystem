# time取得
    execute store result score #Status.EntityTick.GetTime StatusSystem run data get storage status_system: working_space.List[-1].time 1
# グローバルタイマーとスコア比較し、時が来ていれば分岐処理
    execute if score #Status.EntityTick.GetTime StatusSystem <= #global StatusSystem run function status_system:core/entitytick/listloop/ender_time/

# List存続中はループ継続
    data remove storage status_system: working_space.List[-1]
    execute if data storage status_system: working_space.List[-1] run function status_system:core/entitytick/listloop/loop
