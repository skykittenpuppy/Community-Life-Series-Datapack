spreadplayers 0 0 1 100000 false @a
execute as @r at @s run function lifeseries:components/worldborder/positionaroundplayer

function lifeseries:components/getplayercount
scoreboard players operation playerCount constants *= widthPerPlayer constants
worldborder set 1
function lifeseries:components/worldborder/recursivebordersize