#> status_system:core/name_delete/
#
# ステータスを名前指定で削除する関数

# OhMyDat呼び出し
    function #oh_my_dat:please

# Argumentの値から属性を判別し、ストレージをコピー
    function status_system:core/input_macro with storage status_system: Argument

# 指定された名前と完全一致しない変化値を複製するループ関数
    # 下準備としてストレージをコピーして削除
        data modify storage status_system: Temporary2 set from storage status_system: Temporary
        data remove storage status_system: Temporary.Modifier
    # ループ関数を実行する
        execute if data storage status_system: Temporary2.Modifier[0] run function status_system:core/name_delete/loop

# 値を出力
    function status_system:core/output_macro with storage status_system: Argument

# ストレージをリセット
    data remove storage status_system: Argument
    data remove storage status_system: Temporary
    data remove storage status_system: Temporary2
    data remove storage status_system: Temporary3

# スコアをリセット
    scoreboard players reset #Status.NameDelete
