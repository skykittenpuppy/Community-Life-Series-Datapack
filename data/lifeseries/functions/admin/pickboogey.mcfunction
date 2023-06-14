execute if score gamemode constants matches 2 if entity @r[tag=!boogeyman,scores={lives=2..}] run scoreboard players set boogeyTimer constants 6000
execute if score gamemode constants matches 4 if entity @r[tag=!boogeyman] run scoreboard players set boogeyTimer constants 1200
