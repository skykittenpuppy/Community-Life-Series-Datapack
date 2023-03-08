scoreboard players enable @a givelife

execute as @a[scores={lives=1..,givelife=1..}] at @s run scoreboard players add @p[distance=0.1..,scores={lives=1..}] lives 1
execute as @a[scores={lives=1..,givelife=1..}] at @s run scoreboard players remove @s lives 1

execute as @a[scores={lives=1..,givelife=1..}] at @s run tellraw @p[distance=0.1..,scores={lives=1..}] [{"selector": "@s"},{"text": " gave you 1 life", "color": "red"}]
execute as @a[scores={lives=1..,givelife=1..}] at @s run tellraw @s [{"text": "You gave ", "color": "red"},{"selector": "@p[distance=0.1..,scores={lives=1..}]"},{"text": " 1 life"}]

scoreboard players set @a[scores={givelife=1..}] givelife 0