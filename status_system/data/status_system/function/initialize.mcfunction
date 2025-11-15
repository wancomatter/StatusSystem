# OhMyDatが導入されていない場合、エラー
    execute unless data storage oh_my_dat: two_empty_lists run return run tellraw @a {"text":"§e[StatusSystem]§r ERROR - OhMyDatが導入されていません","color":"#FF0000"}

# 汎用スコアオブジェクトを作成
    scoreboard objectives add StatusSystem dummy
# グローバルタイマーを0にする
    scoreboard players set #global StatusSystem 0

# 定数スコアオブジェクト作成と#global適用
    scoreboard objectives add 100 dummy
    scoreboard players set #global 100 100

# 導入完了しましたストレージ
    data modify storage status_system: initialized set value {}
# 導入完了ログ
    tellraw @a {"text":"§e[StatusSystem]§r インストールに成功しました","color":"#FFFFFF"}
