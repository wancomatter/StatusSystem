# id取得
    data modify storage status_system: Argument.id set from storage status_system: working_space.List[-1].id

# id一致ステータスを取得
    function status_system:core/input_macro with storage status_system: Argument

# ストレージ初期設定
    data modify storage status_system: Temporary_inverted set value []
# ループ関数を実行し、残り時間の足りない要素を削除したものをTemporary_として出力
    execute if data storage status_system: Temporary.Modifier[0] run function status_system:core/entitytick/listloop/ender_time/timecheck_loop
# 処理の過程で並び順が反転しているのでもう一度反転させ、Temporaryとして出力
    execute if data storage status_system: Temporary_inverted[0] run function status_system:core/entitytick/listloop/ender_time/inverted_loop

# id一致ステータスとして出力
    function status_system:core/output_macro with storage status_system: Argument

# ストレージをリセット
    data remove storage status_system: Temporary
    data remove storage status_system: Temporary_inverted

# スコアリセット
