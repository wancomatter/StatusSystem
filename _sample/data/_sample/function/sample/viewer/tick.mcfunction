# とりあえずステータスデータはOhMyDat内なのでplease
    function #oh_my_dat:please
# ステータスのみ取り出す
    data modify storage status_viewer:sample _ set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status
# 前tickと比較する
    execute store result storage status_viewer:sample _.success byte 1 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].BeforeTickStatus set from storage status_viewer:sample _

# Slot:35bに何もなければ更新
    execute unless items entity @s container.35 *[custom_data~{SampleStatusViewer:1b}] run data modify storage status_viewer:sample _.success set value 2b
# ステータスビューワーを更新
    execute unless data storage status_viewer:sample _{success:0b} run function _sample:sample/viewer/main

# 後処理
    data remove storage status_viewer:sample _
