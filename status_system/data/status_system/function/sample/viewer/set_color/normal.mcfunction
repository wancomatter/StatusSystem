$scoreboard players set #StatusViewer.1 StatusSystem $(Total)
$scoreboard players set #StatusViewer.2 StatusSystem $(Base)
$execute if score #StatusViewer.1 StatusSystem > #StatusViewer.2 StatusSystem run return run data modify storage status_viewer:sample _.Out set value {"text":"$(Total)","color":"green"}
$execute if score #StatusViewer.1 StatusSystem < #StatusViewer.2 StatusSystem run return run data modify storage status_viewer:sample _.Out set value {"text":"$(Total)","color":"red"}
$data modify storage status_viewer:sample _.Out set value {"text":"$(Total)","color":"white"}
