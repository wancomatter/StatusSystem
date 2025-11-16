#> status_system:core/base/set
# プレイヤーの基礎ステータスを設定する関数
# ついでにステータス反映もされる

# OhMyDat呼び出し
    function #oh_my_dat:please

# Argumentの値から属性を判別し、ストレージをコピー
    function status_system:core/input_macro with storage status_system: Argument

# Argumentの値から効果量をベースに反映
    data modify storage status_system: Temporary.Base set from storage status_system: Argument.Amount

# 値を出力
    function status_system:core/output_macro with storage status_system: Argument

# ストレージをリセット
    data remove storage status_system: Argument
    data remove storage status_system: Temporary
