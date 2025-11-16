# ステータス計算後の個別処理 ================================================================
# ステータス最終値を直接何かに反映したい時に使用します
# ステータス最終値は #Status.TotalCalc.Amount StatusSystem のスコアに保存されています
#==========================================================================================


# attribute変更を伴うステータスを反映する
    # 移動速度(1につき+1%)
        execute if data storage status_system: Argument{id:"Speed"} run function status_system:sample/total/attribute/movement_speed
    # ノックバック耐性(1につき+0.01)
        execute if data storage status_system: Argument{id:"KnockbackResistance"} run function status_system:sample/total/attribute/knockback_resistance
    # 登れる段差上限(1につき+0.01段)
        execute if data storage status_system: Argument{id:"StepHeight"} run function status_system:sample/total/attribute/step_height

# スコア変更を伴うステータスを反映する
    # 最大MP
        execute if data storage status_system: Argument{id:"MPMax"} run function status_system:sample/total/score_change/mp_max
    # MP自然回復速度
        execute if data storage status_system: Argument{id:"MPRegenSpeed"} run function status_system:sample/total/score_change/mp_regenspeed
