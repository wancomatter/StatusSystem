# attribute変更を伴うステータスを反映する
    # 移動速度(1につき+1%)
        execute if data storage status_system: Argument{id:"Speed"} run function status_system:sample/total/attribute/movement_speed
    # ノックバック耐性(1につき+0.01)
        execute if data storage status_system: Argument{id:"KnockbackResistance"} run function status_system:sample/total/attribute/knockback_resistance
    # 登れる段差上限(1につき+0.01段)
        execute if data storage status_system: Argument{id:"StepHeight"} run function status_system:sample/total/attribute/step_height

