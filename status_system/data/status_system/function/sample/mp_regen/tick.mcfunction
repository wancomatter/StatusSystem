# RegenCountをRegenSpeed分だけ加算
    scoreboard players operation @s SampleStatus.MP.RegenCount += @s SampleStatus.MP.RegenSpeed

# RegenCountが2000を超えているならMP自然回復に移行
    execute if entity @s[scores={SampleStatus.MP.RegenCount=2000..}] run function status_system:sample/mp_regen/heal
