# マクロを用いて計算
    execute store result storage status_system: calc.addition double 0.000001 run scoreboard players get #Status.TotalCalc counter_8
    execute store result storage status_system: calc.multiply float 0.01 run scoreboard players remove #Status.TotalCalc counter_5 100
    function status_system:core/total/calc/big_amount/macro with storage status_system: calc
# 取得
    execute store result score #Status.TotalCalc counter_8 run attribute 0-0-0-0-1314 waypoint_transmit_range get 1000000
# 後処理
    attribute 0-0-0-0-1314 waypoint_transmit_range modifier remove status_calc
    attribute 0-0-0-0-1314 waypoint_transmit_range base set 0
    data remove storage status_system: calc
