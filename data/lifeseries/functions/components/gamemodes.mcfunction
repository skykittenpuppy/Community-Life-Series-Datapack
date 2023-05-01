scoreboard players set @a[team=cameo] lives 0
gamemode survival @a[team=cameo]

execute if score 3rdlife constants matches 1.. as @a run gamemode spectator @a[team=gray]
execute if score lastlife constants matches 1.. if score lifeRevealTimer constants matches ..0 as @a run gamemode spectator @a[team=gray]
execute if score doublelife constants matches 1.. as @a run gamemode spectator @a[team=gray]
execute if score limitedlife constants matches 1.. as @a run gamemode spectator @a[team=gray]
execute if score 3rdlife constants matches 1.. as @a run gamemode survival @a[team=!gray]
execute if score lastlife constants matches 1.. if score lifeRevealTimer constants matches ..0 as @a run gamemode survival @a[team=!gray]
execute if score doublelife constants matches 1.. as @a run gamemode survival @a[team=!gray]
execute if score limitedlife constants matches 1.. as @a run gamemode survival @a[team=!gray]

execute if score lastlife constants matches 1.. if score lifeRevealTimer constants matches 1.. run gamemode survival @a

execute if score 3rdlife constants matches 1.. run tag @a[scores={lives=..0}] remove boogeyman
execute if score lastlife constants matches 1.. run tag @a[scores={lives=..0}] remove boogeyman
execute if score doublelife constants matches 1.. run tag @a[scores={lives=..0}] remove boogeyman
execute if score limitedlife constants matches 1.. run tag @a[scores={ticks=..0}] remove boogeyman