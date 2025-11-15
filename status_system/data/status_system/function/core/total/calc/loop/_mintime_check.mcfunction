# 制限時間スコアを更新
    # 制限時間をスコアに取得
    execute if data storage status_system: Temporary_.Modifier[-1].Time store result score #Status.TotalCalc.GetTime StatusSystem run data get storage status_system: Temporary_.Modifier[-1].Time
    # スコア更新がある場合
        # そのスコアが取得したスコアの中で最小であれば更新する
        execute if score #Status.TotalCalc.GetTime StatusSystem matches -2147483648.. if score #Status.TotalCalc.GetTime StatusSystem < #Status.TotalCalc.MinTime StatusSystem run scoreboard players operation #Status.TotalCalc.MinTime StatusSystem = #Status.TotalCalc.GetTime StatusSystem
        # スコアリセット
        execute if score #Status.TotalCalc.GetTime StatusSystem matches -2147483648.. run scoreboard players reset #Status.TotalCalc.GetTime StatusSystem
