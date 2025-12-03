#> status_system:core/name_delete/loop
# 名前重複検知
#
# @within
#   function status_system:core/**

# ストレージを複製
data modify storage status_system: Temporary3 set from storage status_system: Temporary2.Modifier[-1]

# 複製したストレージを引数名に書き換えるコマンドのsuccess検知
execute store success score #Status.NameDelete.tmp StatusSystem run data modify storage status_system: Temporary3.Name set from storage status_system: Argument.Name

# 上記コマンド成功時(名前不一致時)、ストレージを追加
execute unless score #Status.NameDelete.tmp StatusSystem matches 0 run data modify storage status_system: Temporary.Modifier append from storage status_system: Temporary2.Modifier[-1]
# 上記コマンド失敗時(名前一致時)、効果時間検出
execute if score #Status.NameDelete.tmp StatusSystem matches 0 if score #Status.NameDelete.MinDuration StatusSystem matches -2147483648.. run function status_system:core/name_delete/detect_duration

# ストレージを削除
data remove storage status_system: Temporary2.Modifier[-1]

# ストレージが残っている時、ループ
execute if data storage status_system: Temporary2.Modifier[0] run function status_system:core/name_delete/loop
