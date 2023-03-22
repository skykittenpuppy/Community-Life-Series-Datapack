execute as @r at @s run function lifeseries:components/worldborder/positionaroundplayer

scoreboard players set playerCount constants 0
execute as @a run scoreboard players add playerCount constants 1
scoreboard players operation playerCount constants *= widthPerPlayer constants
worldborder set 1
function lifeseries:components/worldborder/recursivebordersize