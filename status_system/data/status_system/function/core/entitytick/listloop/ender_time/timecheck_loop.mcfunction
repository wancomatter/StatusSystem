# 最後尾のストレージのTimeをスコアに取り出す
    execute store result score #Status.EntityTick.GetTime StatusSystem run data get storage status_system: Temporary.Modifier[-1].Time 1

# ストレージのTimeがサーバーカウントを超えていなければ複製
    execute unless score #Status.EntityTick.GetTime StatusSystem <= #global StatusSystem run data modify storage status_system: Temporary_inverted append from storage status_system: Temporary.Modifier[-1]

# 最後尾のストレージを削除
    data remove storage status_system: Temporary.Modifier[-1]

# スコアリセット
    scoreboard players reset #Status.EntityTick.GetTime StatusSystem

# ストレージが残っている時、ループ
    execute if data storage status_system: Temporary.Modifier[0] run function status_system:core/entitytick/listloop/ender_time/timecheck_loop
