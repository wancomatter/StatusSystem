#> status_system:core/total/attribute/jump_strength
# ノックバック耐性ステータスを反映する関数
# @within
#   function status_system:core/total/

# 既に付与されているAttributeは削除
    attribute @s jump_strength modifier remove status_system

# マクロ用ストレージ設定
    data modify storage status_system: attribute set value {Name:"jump_strength",Amount:0,Mode:"add_value"}

# ジャンプ段数0.1～1.1と1.2と1.3～2.1と2.2以上で分岐する
    execute if score #Status.TotalCalc counter_8 matches ..0 run scoreboard players set #Status.TMP counter -500
    execute if score #Status.TotalCalc counter_8 matches ..11 run function status_system:core/total/attribute/jump_strength/1..11
    execute if score #Status.TotalCalc counter_8 matches 12 run scoreboard players set #Status.TMP counter 0
    execute if score #Status.TotalCalc counter_8 matches 13..21 run function status_system:core/total/attribute/jump_strength/13..21
    execute if score #Status.TotalCalc counter_8 matches 22.. run function status_system:core/total/attribute/jump_strength/22..
# Amount設定完了
    execute store result storage status_system: attribute.Amount double 0.01 run scoreboard players get #Status.TMP counter

# マクロ実行
    function status_system:core/total/attribute/_macro with storage status_system: attribute

# 後処理
    data remove storage status_system: attribute
    scoreboard players reset #Status.TMP
