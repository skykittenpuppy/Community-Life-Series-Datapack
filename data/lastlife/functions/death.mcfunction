execute as @a[scores={death=1..}] on attacker if score @s isBoogey matches 1 run tellraw @a [{"selector":"@s"},{"text":" was cured.", "color":"green"}]
execute as @a[scores={death=1..}] on attacker if score @s isBoogey matches 1 run scoreboard players set @s isBoogey 0

scoreboard players remove @a[scores={death=1..}] lives 1
scoreboard players set @a[scores={death=1..}] death 0