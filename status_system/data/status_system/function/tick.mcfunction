# グローバルタイマー
# 毎tick、#globalのStatusSystem+1
    scoreboard players add #global StatusSystem 1

# ステータスシステム (適用したいエンティティのTagやType等を指定して適宜調整してください)
    execute as @e[type=#status_system:living_entity,tag=StatusSystem.DurationCheck] at @s run function #status_system:entity_ticking
