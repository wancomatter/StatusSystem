# 最大MPスコアを反映
    scoreboard players operation @s SampleStatus.MP.Max = #Status.TotalCalc.Amount StatusSystem

# 現在MPが定義されていないなら最大MPと同一にする
    execute unless score @s SampleStatus.MP.Value matches -2147483648..2147483647 run scoreboard players operation @s SampleStatus.MP.Value = @s SampleStatus.MP.Max
