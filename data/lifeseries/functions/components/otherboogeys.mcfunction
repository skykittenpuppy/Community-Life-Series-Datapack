execute store result score @s boogeyRandom run data get entity @e[sort=random, limit=1] UUID[0] 0.25

function lifeseries:components/getplayercount
scoreboard players operation playerCount constants *= boogeyChance configs
scoreboard players operation playerCount constants /= 10 constants

scoreboard players operation @s boogeyRandom %= playerCount constants
execute if score @s boogeyRandom matches 0 run tag @s add boogeyman