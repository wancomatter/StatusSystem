# OhMyDat呼び出し
    function #oh_my_dat:please

# 自然回復量を取得し、自身のMPに加算
    execute store result score #SampleStatus.MP.Regen StatusSystem run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.MPRegenAmount.Total
    scoreboard players operation @s SampleStatus.MP.Value += #SampleStatus.MP.Regen StatusSystem

# RegenCount-2000
    scoreboard players remove @s SampleStatus.MP.RegenCount 2000
# RegenCountが2000を超えているならもう一度
    execute if entity @s[scores={SampleStatus.MP.RegenCount=2000..}] run return run function status_system:sample/mp_regen/heal

# MPが最大値溢れを起こしているなら最大値にする
    execute if score @s SampleStatus.MP.Value > @s SampleStatus.MP.Max run scoreboard players operation @s SampleStatus.MP.Value = @s SampleStatus.MP.Max

# 後処理
    scoreboard players reset #SampleStatus.MP.Regen
