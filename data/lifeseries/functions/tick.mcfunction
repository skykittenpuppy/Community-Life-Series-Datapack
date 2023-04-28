scoreboard players enable @a clearinv
scoreboard players enable @a tutorial
scoreboard players enable @a resethat
scoreboard players enable @a hattype
scoreboard players enable @a hatcolour

execute as @a run function lifeseries:components/hats

function lifeseries:components/colours

execute if score paused constants matches 1 if score 3rdlife constants matches 1.. as @a run function lifeseries:components/lifedisplay
execute if score paused constants matches 1 if score lastlife constants matches 1.. if score lifeRevealTimer constants matches ..0 as @a run function lifeseries:components/lifedisplay
execute if score paused constants matches 1 if score doublelife constants matches 1.. as @a run function lifeseries:components/lifedisplay
execute if score paused constants matches 1 if score limitedlife constants matches 1.. as @a run function lifeseries:components/timedisplay
execute if score paused constants matches 1 run title @a actionbar {"text": "Paused","color": "light_purple"}

execute if score paused constants matches 0 if score 3rdlife constants matches 1.. as @a run function lifeseries:components/death
execute if score paused constants matches 0 if score lastlife constants matches 1.. if score lifeRevealTimer constants matches ..0 as @a run function lifeseries:components/death
execute if score paused constants matches 0 if score doublelife constants matches 1.. as @a run function lifeseries:components/death
execute if score paused constants matches 0 if score limitedlife constants matches 1.. as @a run function lifeseries:components/death

execute if score paused constants matches 0 run execute if score limitedlife constants matches 1.. as @a[gamemode=survival,scores={ticks=..0}] run function lifeseries:components/deathalert

execute if score paused constants matches 0 if score limitedlife constants matches 1.. run function lifeseries:components/timealerts

execute if score paused constants matches 0 run function lifeseries:components/gamemodes

execute if score paused constants matches 0 if score lastlife constants matches 1.. run function lifeseries:components/givelife

execute if score unpauseTimer constants matches 1.. run function lifeseries:components/unpausealerts

execute if score paused constants matches 0 if score lastlife constants matches 1.. run function lifeseries:components/lifealerts

execute if score paused constants matches 0 if score lastlife constants matches 1.. run function lifeseries:components/boogeyalerts
execute if score paused constants matches 0 if score limitedlife constants matches 1.. run function lifeseries:components/boogeyalerts

execute if score limitedlife constants matches 1.. run scoreboard players remove @a ticks 1

execute as @a[scores={tutorial=1..}] run function lifeseries:components/tutorial