$data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].StatusTimeList[{id:"$(id)"}]
$data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].StatusTimeList append value {id:"$(id)",time:$(time)}
