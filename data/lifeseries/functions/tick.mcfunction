scoreboard players set @a[team=cameo] lives 0
scoreboard players set @a[team=cameo] ticks 0

execute if score paused constants matches 0 if score gamemode constants matches 1 run function lifeseries:gamemodes/thirdlife
execute if score paused constants matches 0 if score gamemode constants matches 2 run function lifeseries:gamemodes/lastlife
execute if score paused constants matches 0 if score gamemode constants matches 4 run function lifeseries:gamemodes/limitedlife
execute if score paused constants matches 1 run title @a actionbar {"text": "Paused","color": "light_purple"}
execute if score unpauseTimer constants matches 1.. run function lifeseries:components/unpausealerts