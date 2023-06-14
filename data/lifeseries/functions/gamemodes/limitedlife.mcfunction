function lifeseries:components/gamemodes
function lifeseries:components/timecolours
execute as @a[team=!cameo] run function lifeseries:components/timedisplay

execute if score boogeyTimer constants matches 1.. run function lifeseries:components/boogeyalerts
function lifeseries:components/timealerts

execute as @a[scores={death=1..}] run function lifeseries:components/timeboogey
execute as @a[scores={death=1..}] run function lifeseries:components/timedeath

scoreboard players remove @a ticks 1

execute as @a[team=!cameo,gamemode=survival,scores={ticks=..0}] run function lifeseries:components/outoftime