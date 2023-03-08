execute if score limitedlife constants matches 1.. as @a[scores={death=1..}] on attacker if entity @s[tag=!boogeyman] run scoreboard players add @s ticks 36000
execute if score limitedlife constants matches 1.. as @a[scores={death=1..}] on attacker if entity @s[tag=boogeyman] run scoreboard players add @s ticks 72000
execute if score limitedlife constants matches 1.. as @a[scores={death=1..}] on attacker if entity @s[tag=boogeyman] run scoreboard players remove @a[scores={death=1..}] ticks 72000

execute as @a[scores={death=1..}] on attacker if entity @s[tag=boogeyman] run tellraw @a [{"selector":"@s"},{"text":" was cured.", "color":"green"}]
execute as @a[scores={death=1..}] on attacker if entity @s[tag=boogeyman] run tag @s remove boogeyman

execute if score 3rdlife constants matches 1.. run scoreboard players remove @a[scores={death=1..}] lives 1
execute if score lastlife constants matches 1.. run scoreboard players remove @a[scores={death=1..}] lives 1
execute if score doublelife constants matches 1.. run scoreboard players remove @a[scores={death=1..}] lives 1
execute if score limitedlife constants matches 1.. run scoreboard players remove @a[scores={death=1..}] ticks 72000
execute as @a[scores={death=1..}] as @a at @a run playsound lifeseries:death master @s ~ ~ ~
scoreboard players set @a[scores={death=1..}] death 0