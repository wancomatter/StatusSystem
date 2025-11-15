# 基礎ステータスを設定します
# ついでにステータス反映もされてしまいます

# OhMyDat呼び出し
    function #oh_my_dat:please

# 移動速度
    data modify storage status_system: Argument set value {id:"Speed",Amount:100}
    function status_system:core/base/set
# ノックバック耐性
    data modify storage status_system: Argument set value {id:"KnockbackResistance",Amount:0}
    function status_system:core/base/set
# 登れる段差上限
    data modify storage status_system: Argument set value {id:"StepHeight",Amount:60}
    function status_system:core/base/set
