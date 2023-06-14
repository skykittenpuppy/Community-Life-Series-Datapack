function lifeseries:components/gamemodes
function lifeseries:components/lifecolours
execute if score lifeRevealTimer constants matches ..0 as @a[team=!cameo] run function lifeseries:components/lifedisplay

execute if score lifeRevealTimer constants matches 1.. run function lifeseries:components/lifealerts
execute if score boogeyTimer constants matches 1.. run function lifeseries:components/boogeyalerts
function lifeseries:components/givelife

execute if score lifeRevealTimer constants matches ..0 as @a[scores={death=1..}] run function lifeseries:components/lifeboogey
execute if score lifeRevealTimer constants matches ..0 as @a[scores={death=1..}] run function lifeseries:components/lifedeath