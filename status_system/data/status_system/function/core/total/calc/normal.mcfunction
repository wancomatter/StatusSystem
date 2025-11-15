#> status_system:core/total/calc/normal_calc
# 通常計算
# @within
#   function status_system:core/total/calc/

    # 加算
        data modify storage status_system: Temporary_ set from storage status_system: Temporary
        execute if data storage status_system: Temporary_.Modifier[].operation.addition run function status_system:core/total/calc/loop/addition
    # 別枠乗算
        data modify storage status_system: Temporary_ set from storage status_system: Temporary
        execute if data storage status_system: Temporary_.Modifier[].operation.multiply_total run function status_system:core/total/calc/loop/multiply_total/start

    # 乗算
        scoreboard players set #Status.TotalCalc.Multiply StatusSystem 100
        data modify storage status_system: Temporary_ set from storage status_system: Temporary
        execute if data storage status_system: Temporary_.Modifier[].operation.multiply_base run function status_system:core/total/calc/loop/multiply_base
    # マイナス乗算対策
        execute if score #Status.TotalCalc.Multiply StatusSystem matches ..-1 run scoreboard players set #Status.TotalCalc.Multiply StatusSystem 0

    # 加算値×別枠乗算値が1万を超えるなら別処理に移行(intオーバーフロー対策)
        execute if score #Status.TotalCalc.Amount StatusSystem matches 10000.. run return run function status_system:core/total/calc/big_amount/main
    # 乗算取得値を加算取得値にかける
        scoreboard players operation #Status.TotalCalc.Amount StatusSystem *= #Status.TotalCalc.Multiply StatusSystem
        scoreboard players operation #Status.TotalCalc.Amount StatusSystem /= #global 100
