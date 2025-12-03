# StatusTimeListを作業用ストレージにコピー
    data modify storage status_system: working_space.List set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].StatusTimeList
# タグ削除するかどうかチェック
    data modify storage status_system: working_space.check set value false

# 1項目ずつ中身を見る
    function status_system:core/entitytick/listloop/loop

# タグ削除するなら削除
    execute if data storage status_system: working_space{check:false} run tag @s remove StatusSystem.DurationCheck
# 後処理
    data remove storage status_system: working_space
    scoreboard players reset #Status.EntityTick.GetTime
