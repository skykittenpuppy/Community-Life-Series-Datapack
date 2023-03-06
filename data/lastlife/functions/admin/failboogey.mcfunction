title @a[scores={isBoogey=1}] title {"text": "You have failed. -1 Life.", "color": "red"}
execute as @a[scores={isBoogey=1}] run tellraw @a [{"selector": "@s"},{"text": " failed and lost 1 Life.", "color": "red"}]
scoreboard players remove @a[scores={isBoogey=1}] lives 1
scoreboard players set @a[scores={isBoogey=1}] isBoogey 0