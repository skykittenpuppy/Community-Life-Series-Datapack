execute as @a[scores={death=1..}] on attacker if score @s isBoogey matches 0 run scoreboard players add @s time 36000
execute as @a[scores={death=1..}] on attacker if score @s isBoogey matches 1 run scoreboard players add @s time 72000
execute as @a[scores={death=1..}] on attacker if score @s isBoogey matches 1 run tellraw @a [{"selector":"@s"},{"text":" was cured.", "color":"green"}]

execute as @a[scores={death=1..}] on attacker if score @s isBoogey matches 1 run scoreboard players remove @a[scores={death=1..}] time 72000

execute as @a[scores={death=1..}] on attacker if score @s isBoogey matches 1 run scoreboard players set @s isBoogey 0

execute as @a[scores={death=1..}] at @a run playsound entity.lightning_bolt.thunder master @s ~ ~ ~
scoreboard players remove @a[scores={death=1..}] time 72000
scoreboard players set @a[scores={death=1..}] death 0