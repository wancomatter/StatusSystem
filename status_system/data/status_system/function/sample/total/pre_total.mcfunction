# 登れる段差上限の上限/下限
    execute if data storage status_system: Argument{id:"StepHeight"} if score #Status.TotalCalc.Amount StatusSystem matches ..-1 run scoreboard players set #Status.TotalCalc.Amount StatusSystem 0
    execute if data storage status_system: Argument{id:"StepHeight"} if score #Status.TotalCalc.Amount StatusSystem matches 1001.. run scoreboard players set #Status.TotalCalc.Amount StatusSystem 1000
