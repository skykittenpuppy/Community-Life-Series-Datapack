scoreboard players set @a death 0
scoreboard players set @a givelife 0
scoreboard players set unpauseTimer constants 120

gamerule keepInventory false
execute if score gamemode constants matches 4 run gamerule keepInventory true
title @a title {"text": "Unpaused","color": "red"}