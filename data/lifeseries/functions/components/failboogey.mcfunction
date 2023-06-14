execute as @a[tag=boogeyman] run tellraw @a[tag=!boogeyman] [{"selector": "@s","color": "gray"},{"text":" failed to kill another player last session as the boogeyman."}]

execute if score gamemode constants matches 2 run tellraw @a[tag=boogeyman] [{"text":"You failed to kill another player last session as the boogeyman. As punishment, you have dropped to your ","color":"gray"},{"text":"Last Life","color":"red"},{"text":". All alliances are severed and you are now hostile to all players. You may team with others on their Last Life if you wish."}]
execute if score gamemode constants matches 2 run scoreboard players set @a[tag=boogeyman] lives 1

execute if score gamemode constants matches 4 run tellraw @a[tag=boogeyman,scores={ticks=1..576000}] [{"text":"You failed to kill another player last session as the boogeyman. As punishment, you have been ","color":"gray"},{"text":"Eliminated","color":"red"},{"text": "."}]
execute if score gamemode constants matches 4 run scoreboard players set @a[tag=boogeyman,scores={ticks=1..576000}] ticks 0

execute if score gamemode constants matches 4 run tellraw @a[tag=boogeyman,scores={ticks=576001..1152000}] [{"text":"You failed to kill another player last session as the boogeyman. As punishment, you have dropped to the next colour. You have ","color":"gray"},{"text":"8 hours","color":"red"},{"text": "."}]
execute if score gamemode constants matches 4 run scoreboard players set @a[tag=boogeyman,scores={ticks=576001..1152000}] ticks 576000

execute if score gamemode constants matches 4 run tellraw @a[tag=boogeyman,scores={ticks=1152001..}] [{"text":"You failed to kill another player last session as the boogeyman. As punishment, you have dropped to the next colour. You have ","color":"gray"},{"text":"16 hours","color":"yellow"},{"text": "."}]
execute if score gamemode constants matches 4 run scoreboard players set @a[tag=boogeyman,scores={ticks=1152001..}] ticks 1152000

tag @a[tag=boogeyman] remove boogeyman