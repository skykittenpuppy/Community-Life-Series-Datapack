title @a[scores={isBoogey=1}] title {"text": "You have failed.", "color": "red"}

execute as @a[scores={isBoogey=1,time=0..575999}] run tellraw @a [{"selector": "@s"},{"text": " failed.", "color": "red"}]
execute as @a[scores={isBoogey=1,time=576000..1151999}] run tellraw @a [{"selector": "@s"},{"text": " failed and now has 8 hours.", "color": "red"}]
execute as @a[scores={isBoogey=1,time=1152000..}] run tellraw @a [{"selector": "@s"},{"text": " failed and now has 16 hours.", "color": "red"}]

scoreboard players set @a[scores={isBoogey=1,time=0..575999}] time 0
scoreboard players set @a[scores={isBoogey=1,time=576000..1151999}] time 576000
scoreboard players set @a[scores={isBoogey=1,time=1152000..}] time 1152000

scoreboard players set @a[scores={isBoogey=1}] isBoogey 0