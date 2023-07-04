execute if score unpauseTimer constants matches 120 run title @a title {"text": "Resuming in: 3", "color": "light_purple"}
execute if score unpauseTimer constants matches 120 as @a at @s run playsound ui.button.click master @s ~ ~ ~

execute if score unpauseTimer constants matches 080 run title @a title {"text": "Resuming in: 2", "color": "light_purple"}
execute if score unpauseTimer constants matches 080 as @a at @s run playsound ui.button.click master @s ~ ~ ~

execute if score unpauseTimer constants matches 040 run title @a title {"text": "Resuming in: 1", "color": "light_purple"}
execute if score unpauseTimer constants matches 040 as @a at @s run playsound ui.button.click master @s ~ ~ ~

execute if score unpauseTimer constants matches 001 run title @a title {"text": "Go.", "color": "light_purple"}
execute if score unpauseTimer constants matches 001 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score unpauseTimer constants matches 001 run scoreboard players set @a death 0
execute if score unpauseTimer constants matches 001 run scoreboard players set @a givelife 0
execute if score unpauseTimer constants matches 001 run gamerule keepInventory false
execute if score unpauseTimer constants matches 001 if score gamemode constants matches 4 run gamerule keepInventory true
execute if score unpauseTimer constants matches 001 run gamerule showDeathMessages true
execute if score unpauseTimer constants matches 001 run scoreboard players set paused constants 0

execute if score unpauseTimer constants matches 1.. run scoreboard players remove unpauseTimer constants 1