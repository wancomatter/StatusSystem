# ステータスの基礎値をスコアに取得
    scoreboard players set #Status.TotalCalc.Amount StatusSystem 0
    execute store result score #Status.TotalCalc.Amount StatusSystem run data get storage status_system: Temporary.Base


# 残り時間反映用スコアを設定する
    scoreboard players set #Status.TotalCalc.MinTime StatusSystem 2147483647

# ステータスのModifierの計算分岐
    # 通常計算
        function status_system:core/total/calc/normal
    # 計算を特殊にしたい場合は条件指定と共に追加します


# Total適用前に各ID毎に調整がある場合は行う
    function #status_system:total/pre_total

# 計算後のスコアを元となったストレージにTotalとして保存
    execute store result storage status_system: Temporary.Total int 1 run scoreboard players get #Status.TotalCalc.Amount StatusSystem

# 残り時間の最小値をスコアに反映する
    # マクロ用ストレージ準備
        data modify storage status_system: TimeMacro set value {id:"None"}
        data modify storage status_system: TimeMacro.id set from storage status_system: Argument.id
    # 時間制限が存在しない時
        execute if score #Status.TotalCalc.MinTime StatusSystem matches 2147483647 run function status_system:core/total/time/reset with storage status_system: TimeMacro
    # 時間制限が存在する時
        execute unless score #Status.TotalCalc.MinTime StatusSystem matches 2147483647 store result storage status_system: TimeMacro.time int 1 run scoreboard players get #Status.TotalCalc.MinTime StatusSystem
        execute unless score #Status.TotalCalc.MinTime StatusSystem matches 2147483647 run function status_system:core/total/time/set with storage status_system: TimeMacro
    # 後処理
        data remove storage status_system: TimeMacro

# Total適用後に各ID毎に調整がある場合は行う
    function #status_system:total/post_total

# ストレージをリセット
    data remove storage status_system: Temporary_
    data remove storage status_system: Temporary_List_out

# スコアをリセット
    scoreboard players reset #Status.TotalCalc.Amount
    scoreboard players reset #Status.TotalCalc.MinTime

