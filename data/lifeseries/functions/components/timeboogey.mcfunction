execute as @s on attacker if entity @s[tag=!boogeyman] run scoreboard players add @s ticks 36000
execute as @s on attacker if entity @s[tag=!boogeyman] run title @s title {"text": "+30 minutes", "color": "green"}
execute as @s on attacker if entity @s[tag=!boogeyman] run scoreboard players remove @a[scores={death=1..}] ticks 72000
execute as @s on attacker if entity @s[tag=!boogeyman] run title @a[scores={death=1..}] title {"text": "-1 hours", "color": "red"}
execute as @s on attacker if entity @s[tag=!boogeyman] run scoreboard players set @a[scores={death=1..}] death 0

execute as @s on attacker if entity @s[tag=boogeyman] run scoreboard players add @s ticks 72000
execute as @s on attacker if entity @s[tag=boogeyman] run title @s title {"text": "+1 hours", "color": "green"}
execute as @s on attacker if entity @s[tag=boogeyman] run scoreboard players remove @a[scores={death=1..}] ticks 144000
execute as @s on attacker if entity @s[tag=boogeyman] run title @a[scores={death=1..}] title {"text": "-2 hours", "color": "red"}
execute as @s on attacker if entity @s[tag=boogeyman] run scoreboard players set @a[scores={death=1..}] death 0

scoreboard players remove @s[scores={death=1..}] ticks 72000
title @s[scores={death=1..}] title {"text": "-1 hours", "color": "red"}
scoreboard players set @s[scores={death=1..}] death 0

execute as @s[team=!cameo] as @a at @a run playsound lifeseries:death master @s ~ ~ ~

execute as @s on attacker if entity @s[tag=boogeyman] run tellraw @a [{"selector":"@s"},{"text":" was cured.", "color":"green"}]
execute as @s on attacker if entity @s[tag=boogeyman] run tag @s remove boogeyman