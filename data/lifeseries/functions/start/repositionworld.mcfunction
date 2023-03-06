spreadplayers 0 0 1 100000 false @a
execute as @r at @s run function lifeseries:start/positionaroundplayer

scoreboard objectives add argh dummy
scoreboard objectives add playerCount dummy
execute as @a run scoreboard players add dummyPlayer playerCount 1
scoreboard players set dummyPlayer argh 64
scoreboard players operation dummyPlayer playerCount *= dummyPlayer argh
scoreboard objectives remove argh
worldborder set 1
function lifeseries:start/recursivebordersize
scoreboard objectives remove playerCount