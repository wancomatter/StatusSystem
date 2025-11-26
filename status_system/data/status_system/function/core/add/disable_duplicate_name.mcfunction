# 下準備としてストレージをコピーして元データのModifierを削除
    data modify storage status_system: Temporary2 set from storage status_system: Temporary
    data remove storage status_system: Temporary.Modifier
# ループ関数を実行する
    scoreboard players set #Status.NameDelete.MinDuration StatusSystem -2147483648
    execute if data storage status_system: Temporary2.Modifier[0] run function status_system:core/name_delete/loop
# 一旦ストレージをリセット
    data remove storage status_system: Temporary2
