function lastlife:colours
function lastlife:death
execute as @a run function lastlife:showlives
execute if score dummyPlayer lifeRevealTimer matches ..0 run function lastlife:gamemodes
execute if score dummyPlayer lifeRevealTimer matches ..0 run function lastlife:givelife
execute if score dummyPlayer lifeRevealTimer matches 0 run bossbar set livesreveal visible false
execute if score dummyPlayer lifeRevealTimer matches 1.. run function lastlife:lifealerts
execute if score dummyPlayer boogeyTimer matches 0 run bossbar set boogeyreveal visible false
execute if score dummyPlayer boogeyTimer matches 1.. run function lastlife:boogeyalerts