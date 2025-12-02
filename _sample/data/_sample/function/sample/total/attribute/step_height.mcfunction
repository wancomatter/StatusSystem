# 既に付与されているAttributeは削除
    attribute @s step_height base set 0
    attribute @s step_height modifier remove status_system

# マクロ用ストレージ設定
    data modify storage status_system: attribute set value {Name:"step_height",Amount:0,Mode:"add_value"}
# スコアから今回設定する値を準備
    execute store result storage status_system: attribute.Amount double 0.01 run scoreboard players get #Status.TotalCalc.Amount StatusSystem

# マクロ実行
    function _sample:sample/total/attribute/_macro with storage status_system: attribute

# 後処理
    data remove storage status_system: attribute
