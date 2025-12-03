# MP最大値が1以上ならMP自然回復
    execute if entity @s[scores={SampleStatus.MP.Max=1..}] run function _sample:sample/mp_regen/tick

# actionbarにMP表示
    function _sample:sample/actionbar

# ステータスビューワー起動
    function _sample:sample/viewer/tick
