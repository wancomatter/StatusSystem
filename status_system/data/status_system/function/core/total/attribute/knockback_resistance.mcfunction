#> status_system:core/total/attribute/knockback_resistance
# ノックバック耐性ステータスを反映する関数
# @within
#   function status_system:core/total/

# 既に付与されているAttributeは削除
    attribute @s knockback_resistance modifier remove status_system

# マクロ用ストレージ設定
    data modify storage status_system: attribute set value {Name:"knockback_resistance",Amount:0,Mode:"add_value"}
# スコアから今回設定する値を準備
    execute store result storage status_system: attribute.Amount double 0.01 run scoreboard players get #Status.TotalCalc counter_8

# マクロ実行
    function status_system:core/total/attribute/_macro with storage status_system: attribute

# 後処理
    data remove storage status_system: attribute
