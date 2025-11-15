#> status_system:core/total/attribute/scale
# ノックバック耐性ステータスを反映する関数
# @within
#   function status_system:core/total/

# 既に付与されているAttributeは削除
    attribute @s scale modifier remove status_system

# マクロ用ストレージ設定
    data modify storage status_system: attribute set value {Name:"scale",Amount:0,Mode:"add_multiplied_total"}
# スコアから今回設定する値を準備
    scoreboard players operation #Status.TMP counter = #Status.TotalCalc counter_8
    execute store result storage status_system: attribute.Amount double 0.01 run scoreboard players remove #Status.TMP counter 100

# マクロ実行
    function status_system:core/total/attribute/_macro with storage status_system: attribute

# 後処理
    data remove storage status_system: attribute
    scoreboard players reset #Status.TMP
