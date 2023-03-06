scoreboard players remove dummyPlayer playerCount 1
execute if score dummyPlayer playerCount matches 1.. run worldborder add 1
execute if score dummyPlayer playerCount matches 1.. run function lifeseries:start/recursivebordersize