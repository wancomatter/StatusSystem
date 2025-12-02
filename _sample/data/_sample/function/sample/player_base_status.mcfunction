# 基礎ステータスを設定します
# ついでにステータス反映もされてしまいます

# 移動速度
    data modify storage status_system: Argument set value {id:"Speed",Amount:100}
    function status_system:core/base/set
# ノックバック耐性
    data modify storage status_system: Argument set value {id:"KnockbackResistance",Amount:0}
    function status_system:core/base/set
# 登れる段差上限
    data modify storage status_system: Argument set value {id:"StepHeight",Amount:60}
    function status_system:core/base/set

# 最大MP
    data modify storage status_system: Argument set value {id:"MPMax",Amount:100}
    function status_system:core/base/set
# MP自然回復速度
    data modify storage status_system: Argument set value {id:"MPRegenSpeed",Amount:100}
    function status_system:core/base/set
# MP自然回復量
    data modify storage status_system: Argument set value {id:"MPRegenAmount",Amount:1}
    function status_system:core/base/set
