#> status_system:core/total/calc/loop/multiply_total/start
# 引数の値に応じてステータスを取り出す関数
# @within
#   function status_system:core/total/calc/loop/multiply_total/start
#   function status_system:core/total/calc/loop/multiply_total/

# 最前列の要素が加算でないなら中断して特殊処理
    execute unless data storage status_system: Temporary_.Modifier[-1].operation.multiply_total if function status_system:core/total/calc/loop/return_if_function run return run execute if data storage status_system: Temporary_.Modifier[-1] run function status_system:core/total/calc/loop/multiply_total/

# 最前列のストレージのAmountをスコアに取り出す
    execute if data storage status_system: Temporary_.Modifier[-1].operation.multiply_total store result storage status_system: Temporary_.Multiply.Amount double 0.01 run data get storage status_system: Temporary_.Modifier[-1].Amount

# modifier利用でx倍～～
    function status_system:core/total/calc/loop/multiply_total/macro1 with storage status_system: Temporary_.Multiply
# 一旦値取得
    execute store result storage status_system: Temporary_.Multiply.Amount double 0.000001 run attribute 0-0-0-0-1314 waypoint_transmit_range get 1000000
# modifier削除
    attribute 0-0-0-0-1314 waypoint_transmit_range modifier remove status_calc
# base再設定
    function status_system:core/total/calc/loop/multiply_total/macro2 with storage status_system: Temporary_.Multiply

# 制限時間スコアを更新
    function status_system:core/total/calc/loop/_mintime_check

# 最前列のストレージを削除
    data remove storage status_system: Temporary_.Modifier[-1]

# ストレージが残っている時、ループ
    execute if data storage status_system: Temporary_.Modifier[-1] run function status_system:core/total/calc/loop/multiply_total/
