#> status_system:core/update/
#
# ステータスを手動で更新する関数

# OhMyDat呼び出し
    function #oh_my_dat:please

# Argumentの値から属性を判別し、ストレージをコピー
    function status_system:core/input_macro with storage status_system: Argument

# 値を出力
    function status_system:core/output_macro with storage status_system: Argument

# ストレージをリセット
    data remove storage status_system: Argument
