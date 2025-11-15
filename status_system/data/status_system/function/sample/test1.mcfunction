data modify storage status_system: Argument set value {id:"Speed",Amount:100,Name:"test",isMultiply:0b}
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Status.Speed.Modifier[{Name:"test"}] run function status_system:core/name_delete/
function #status_system:add
