#> status_system:core/total/calc/loop/multiply_total/
# 引数の値に応じてステータスを取り出す関数
# @within
#   function status_system:core/total/calc/normal

# counter_8の値を0.01倍でストレージに保存
    execute store result storage status_system: Temporary_.Multiply.Amount double 0.01 run scoreboard players get #Status.TotalCalc.Amount StatusSystem
# base設定
    function status_system:core/total/calc/loop/multiply_total/macro2 with storage status_system: Temporary_.Multiply

# ループ起動
    function status_system:core/total/calc/loop/multiply_total/

# attribute取得でAmountに値を戻す
    execute store result score #Status.TotalCalc.Amount StatusSystem run attribute 0-0-0-0-1314 waypoint_transmit_range get 100
# 後処理
    attribute 0-0-0-0-1314 waypoint_transmit_range base set 0
