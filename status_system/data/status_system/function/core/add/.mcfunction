#> status_system:core/add/
# プレイヤーの基礎ステータスを設定する関数
# ついでにステータス反映もされる


# OhMyDat呼び出し
    function #oh_my_dat:please

# Argumentの値から属性を判別し、ストレージをコピー
    function status_system:core/input_macro with storage status_system: Argument

# 名前重複を削除
    # 下準備としてストレージをコピーして削除
        data modify storage status_system: Temporary2 set from storage status_system: Temporary
        data remove storage status_system: Temporary.Modifier
    # ループ関数を実行する
        scoreboard players set #Status.NameDelete.MinDuration StatusSystem -2147483648
        execute if data storage status_system: Temporary2.Modifier[0] run function status_system:core/name_delete/loop
    # 一旦ストレージをリセット
        data remove storage status_system: Temporary2

# ArgumentのDurationとグローバルCDを利用して名前、効果量、継続時間を設定する
    # 効果量
        data modify storage status_system: Temporary2.Amount set from storage status_system: Argument.Amount
    # 名前
        data modify storage status_system: Temporary2.Name set from storage status_system: Argument.Name
    # 加算or乗算or別枠乗算
        execute if data storage status_system: Argument{AddOption:"add_multiplied_base"} run data modify storage status_system: Temporary2.operation.multiply_base set value 1b
        execute if data storage status_system: Argument{AddOption:"add_multiplied_total"} run data modify storage status_system: Temporary2.operation.multiply_total set value 1b
        execute unless data storage status_system: Argument{AddOption:"add_multiplied_base"} unless data storage status_system: Argument{AddOption:"add_multiplied_total"} run data modify storage status_system: Temporary2.operation.addition set value 1b
    # 継続時間ありの場合：グローバルタイマー利用で継続時間を取得する
        execute if data storage status_system: Argument.Duration store result score #Status.TimeCalc.tmp StatusSystem run data get storage status_system: Argument.Duration 1
        execute if data storage status_system: Argument.Duration store result storage status_system: Temporary2.Time int 1 run scoreboard players operation #Status.TimeCalc.tmp StatusSystem += #global StatusSystem
        # 名前重複があるなら継続時間の長い方に合わせる
            execute if data storage status_system: Argument.Duration if score #Status.NameDelete.MinDuration StatusSystem > #Status.TimeCalc.tmp StatusSystem store result storage status_system: Temporary2.Time int 1 run scoreboard players get #Status.NameDelete.MinDuration StatusSystem
        # いずでばふいちびー？
            execute if data storage status_system: Argument.Duration if data storage status_system: Argument{isDebuff:1b} unless data storage status_system: Argument{NoDebuffTag:1b} run data modify storage status_system: Temporary2.isDebuff set value 1b
    # 継続時間なし
        execute unless data storage status_system: Argument.Duration run data modify storage status_system: Temporary2.Time set value 2147483647
    # IDがマイナス(特殊デバフ系列)の時、OwnerIDタグも追加
        execute if data storage status_system: Argument.OwnerID run data modify storage status_system: Temporary2.OwnerID set from storage status_system: Argument.OwnerID
    # 適用
        data modify storage status_system: Temporary.Modifier append from storage status_system: Temporary2

# 値を出力
    function status_system:core/output_macro with storage status_system: Argument

# ストレージをリセット
    data remove storage status_system: Argument
    data remove storage status_system: Temporary
    data remove storage status_system: Temporary2

# スコアをリセット
    scoreboard players reset #Status.NameDelete.tmp
    scoreboard players reset #Status.NameDelete.MinDuration
    scoreboard players reset #Status.NameDelete.GetDuration
