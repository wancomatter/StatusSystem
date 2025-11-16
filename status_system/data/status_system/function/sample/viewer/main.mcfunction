# 事前準備 =============================================================================================
# 登れる段差上限を小数表示対応
    execute store result score #StatusViewer.tmp StatusSystem run data get storage status_viewer:sample _.StepHeight.Total
    execute store result storage status_viewer:sample _.StepHeight.Total1 int 0.01 run scoreboard players get #StatusViewer.tmp StatusSystem
    execute store result storage status_viewer:sample _.StepHeight.Total2 int 1 run scoreboard players operation #StatusViewer.tmp StatusSystem %= #global 100


# 各項目取得 =============================================================================================
# サンプルステータス
    # 移動速度
        function status_system:sample/viewer/set_color/normal with storage status_viewer:sample _.Speed
        data modify storage status_viewer:sample _.StatusViewer.Speed set from storage status_viewer:sample _.Out
    # 登れる段差上限
        function status_system:sample/viewer/set_color/has_demical with storage status_viewer:sample _.StepHeight
        data modify storage status_viewer:sample _.StatusViewer.StepHeight set from storage status_viewer:sample _.Out
    # ノックバック耐性
        function status_system:sample/viewer/set_color/normal with storage status_viewer:sample _.KnockbackResistance
        data modify storage status_viewer:sample _.StatusViewer.KnockbackResistance set from storage status_viewer:sample _.Out
    # 最大MP
        function status_system:sample/viewer/set_color/normal with storage status_viewer:sample _.MPMax
        data modify storage status_viewer:sample _.StatusViewer.MPMax set from storage status_viewer:sample _.Out
    # MP自然回復速度
        function status_system:sample/viewer/set_color/normal with storage status_viewer:sample _.MPRegenSpeed
        data modify storage status_viewer:sample _.StatusViewer.MPRegenSpeed set from storage status_viewer:sample _.Out
    # MP自然回復量
        function status_system:sample/viewer/set_color/normal with storage status_viewer:sample _.MPRegenAmount
        data modify storage status_viewer:sample _.StatusViewer.MPRegenAmount set from storage status_viewer:sample _.Out


# ビューワー適用 =============================================================================================
# アイテム消す
    clear @s *[custom_data~{SampleStatusViewer:1b}]

# ステータス表示アイテムをcontainer.35にぶちこむ
    loot replace entity @s container.35 loot status_system:sample_viewer

# 後処理 =============================================================================================
    scoreboard players reset #status_viewer
    scoreboard players reset #StatusViewer.tmp
