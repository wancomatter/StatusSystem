#> status_system:core/total/calc/loop/addition
# 引数の値に応じてステータスを取り出す関数
# @within
#   function status_system:core/total/calc/normal
#   function status_system:core/total/calc/loop/addition

# 最前列の要素が加算でないなら中断して特殊処理
    execute unless data storage status_system: Temporary_.Modifier[-1].operation.addition if function status_system:core/total/calc/loop/return_if_function run return run execute if data storage status_system: Temporary_.Modifier[-1] run function status_system:core/total/calc/loop/addition

# 最前列のストレージのAmountをスコアに取り出す
    scoreboard players set #Status.TotalCalc.tmp StatusSystem 0
    execute if data storage status_system: Temporary_.Modifier[-1].operation.addition store result score #Status.TotalCalc.tmp StatusSystem run data get storage status_system: Temporary_.Modifier[-1].Amount

# スコア加算
    scoreboard players operation #Status.TotalCalc.Amount StatusSystem += #Status.TotalCalc.tmp StatusSystem

# 制限時間スコアを更新
    function status_system:core/total/calc/loop/_mintime_check

# 最前列のストレージを削除
    data remove storage status_system: Temporary_.Modifier[-1]

# ストレージが残っている時、ループ
    execute if data storage status_system: Temporary_.Modifier[-1] run function status_system:core/total/calc/loop/addition
