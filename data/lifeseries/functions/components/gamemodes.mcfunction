execute if score 3rdlife constants matches 1.. as @a run gamemode spectator @a[scores={lives=..0}]
execute if score lastlife constants matches 1.. as @a run gamemode spectator @a[scores={lives=..0}]
execute if score doublelife constants matches 1.. as @a run gamemode spectator @a[scores={lives=..0}]
execute if score limitedlife constants matches 1.. as @a run gamemode spectator @a[scores={ticks=..0}]
execute if score 3rdlife constants matches 1.. as @a run gamemode survival @a[scores={lives=1..}]
execute if score lastlife constants matches 1.. as @a run gamemode survival @a[scores={lives=1..}]
execute if score doublelife constants matches 1.. as @a run gamemode survival @a[scores={lives=1..}]
execute if score limitedlife constants matches 1.. as @a run gamemode survival @a[scores={ticks=1..}]
execute if score lastlife constants matches 1.. if score lifeRevealTimer constants matches ..0 run gamemode survival @a