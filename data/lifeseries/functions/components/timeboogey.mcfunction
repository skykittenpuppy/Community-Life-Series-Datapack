execute as @s on attacker if entity @s[tag=!boogeyman] run scoreboard players add @s ticks 36000
execute as @s on attacker if entity @s[tag=boogeyman] run scoreboard players add @s ticks 72000
execute as @s on attacker if entity @s[tag=boogeyman] run scoreboard players remove @a[scores={death=1..}] ticks 72000

execute as @s on attacker if entity @s[tag=boogeyman] run tellraw @a [{"selector":"@s"},{"text":" was cured.", "color":"green"}]
execute as @s on attacker if entity @s[tag=boogeyman] run tag @s remove boogeyman