# OhMyDat ぷりーず～～～～
    function #oh_my_dat:please

# StatusTimeListがあるならループに移行
    execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].StatusTimeList[0] run function status_system:core/entitytick/listloop/main
