scoreboard players enable @a clearinv

function lifeseries:components/colours

execute if score 3rdlife constants matches 1.. as @a run function lifeseries:components/lifedisplay
execute if score lastlife constants matches 1.. as @a run function lifeseries:components/lifedisplay
execute if score doublelife constants matches 1.. as @a run function lifeseries:components/lifedisplay
execute if score limitedlife constants matches 1.. as @a run function lifeseries:components/timedisplay

execute if score paused constants matches 0 run function lifeseries:components/death

execute if score paused constants matches 0 run execute if score limitedlife constants matches 1.. if entity @a[gamemode=survival,scores={ticks=..0}] as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~
execute if score paused constants matches 0 run execute if score limitedlife constants matches 1.. if entity @a[gamemode=survival,scores={ticks=..0}] run tellraw @a [{"selector": "@s", "color": "red"}, {"text": " has run out of time."}]

execute if score paused constants matches 0 run function lifeseries:components/gamemodes

execute if score paused constants matches 0 if score lastlife constants matches 1.. run function lifeseries:components/givelife

execute if score paused constants matches 0 if score lastlife constants matches 1.. run function lifeseries:components/lifealerts

execute if score paused constants matches 0 if score lastlife constants matches 1.. run function lifeseries:components/boogeyalerts
execute if score paused constants matches 0 if score limitedlife constants matches 1.. run function lifeseries:components/boogeyalerts
