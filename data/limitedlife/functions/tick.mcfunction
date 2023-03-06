function limitedlife:colours
function limitedlife:death
execute as @a[scores={time=..0}, gamemode=survival] at @s run function limitedlife:deathalerts
function limitedlife:gamemodes
execute as @a run function limitedlife:showtime
execute if score dummyPlayer boogeyTimer matches 0 run bossbar set boogeyreveal visible false
execute if score dummyPlayer boogeyTimer matches 1.. run function limitedlife:boogeyalerts
execute as @a[scores={time=1..}] run scoreboard players remove @s time 1