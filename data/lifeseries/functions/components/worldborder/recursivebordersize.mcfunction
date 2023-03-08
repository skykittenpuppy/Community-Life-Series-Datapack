scoreboard players remove playerCount constants 1
execute if score playerCount constants matches 1.. run worldborder add 1
execute if score playerCount constants matches 1.. run function lifeseries:components/worldborder/recursivebordersize