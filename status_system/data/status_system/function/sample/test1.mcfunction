data modify storage status_system: Argument set value {id:"Speed",Name:"test",Amount:100,AddOption:"add_value"}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Modifier[{Name:"test"}] run function status_system:core/name_delete/
function #status_system:add
