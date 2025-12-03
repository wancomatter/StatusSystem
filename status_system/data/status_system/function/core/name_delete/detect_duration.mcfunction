#> status_system:core/name_delete/detect_duration
# 時間切れを検知する関数
#
# @within
#   function status_system:core/name_delete/loop

#tellraw @a {"nbt":"Temporary2.Modifier[0]","storage":"mby:status"}
execute store result score #Status.NameDelete.GetDuration StatusSystem run data get storage status_system: Temporary2.Modifier[-1].Time
scoreboard players operation #Status.NameDelete.MinDuration StatusSystem > #Status.NameDelete.GetDuration StatusSystem
