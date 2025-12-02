# MP最大値が1以上ならMP自然回復
    execute if entity @s[scores={SampleStatus.MP.Max=1..}] run function _sample:sample/mp_regen/tick

# プレイヤーならactionbarにMP表示
    execute if entity @s[type=player] run function _sample:sample/actionbar

# プレイヤーならステータスビューワー起動
    execute if entity @s[type=player] run function _sample:sample/viewer/tick
