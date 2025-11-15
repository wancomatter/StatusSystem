scoreboard players remove #Status.TMP counter 12
scoreboard players operation #Status.TMP counter -= #Status.TotalCalc counter_8

scoreboard players operation #Status.TMP counter *= #global 2


execute if score #Status.TotalCalc counter_8 matches 1 run scoreboard players set #Status.TMP counter -40
execute if score #Status.TotalCalc counter_8 matches 2 run scoreboard players set #Status.TMP counter -27
execute if score #Status.TotalCalc counter_8 matches 3 run scoreboard players set #Status.TMP counter -23
execute if score #Status.TotalCalc counter_8 matches 4 run scoreboard players set #Status.TMP counter -19
execute if score #Status.TotalCalc counter_8 matches 5 run scoreboard players set #Status.TMP counter -15
execute if score #Status.TotalCalc counter_8 matches 6 run scoreboard players set #Status.TMP counter -12
execute if score #Status.TotalCalc counter_8 matches 7 run scoreboard players set #Status.TMP counter -10
execute if score #Status.TotalCalc counter_8 matches 8 run scoreboard players set #Status.TMP counter -8
execute if score #Status.TotalCalc counter_8 matches 9 run scoreboard players set #Status.TMP counter -6
execute if score #Status.TotalCalc counter_8 matches 10 run scoreboard players set #Status.TMP counter -4
execute if score #Status.TotalCalc counter_8 matches 11 run scoreboard players set #Status.TMP counter -2
