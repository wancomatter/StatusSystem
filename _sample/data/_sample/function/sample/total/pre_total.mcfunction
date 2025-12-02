# ステータス計算前の個別処理 ================================================================
# 主にステータス最終値に独自補正を行いたい時に使用します
# ステータス最終値は #Status.TotalCalc.Amount StatusSystem のスコアに保存されています
#==========================================================================================

# 登れる段差上限の上限/下限
    execute if data storage status_system: Argument{id:"StepHeight"} if score #Status.TotalCalc.Amount StatusSystem matches ..-1 run scoreboard players set #Status.TotalCalc.Amount StatusSystem 0
    execute if data storage status_system: Argument{id:"StepHeight"} if score #Status.TotalCalc.Amount StatusSystem matches 1001.. run scoreboard players set #Status.TotalCalc.Amount StatusSystem 1000
