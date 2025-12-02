# 既に付与されているAttributeは削除
    attribute @s movement_speed modifier remove speed

# マクロ用ストレージ設定
    data modify storage status_system: attribute set value {Attribute:"movement_speed",id:"speed",Amount:0,Mode:"add_multiplied_total"}
# スコアから今回設定する値を準備
    scoreboard players operation #Status.TMP StatusSystem = #Status.TotalCalc.Amount StatusSystem
    execute store result storage status_system: attribute.Amount double 0.01 run scoreboard players remove #Status.TMP StatusSystem 100

# マクロ実行
    function _sample:sample/total/attribute/_macro with storage status_system: attribute

# 後処理
    data remove storage status_system: attribute
    scoreboard players reset #Status.TMP
