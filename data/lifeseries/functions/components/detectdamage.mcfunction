execute as @e[tag=group1] store result score @s health run data get entity @s Health 1
execute as @e[tag=group1] run scoreboard players operation @s healthDif = @s health
execute as @e[tag=group1] run scoreboard players operation @s healthDif -= @s healthPrev

execute as @e[tag=group1] run scoreboard players operation group1 healthDifShared += @s healthDif
scoreboard players operation group1 healthShared += group1 healthDifShared

execute as @e[tag=group1] store result score @s health run data get entity @s Health 1
execute as @e[tag=group1] run scoreboard players operation @s healthPrev = @s health