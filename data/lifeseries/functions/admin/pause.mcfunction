scoreboard players set @a[scores={death=1..}] death 0
scoreboard players set @a[scores={givelife=1..}] givelife 0
scoreboard players add dummyPlayer paused 1
scoreboard players operation dummyPlayer paused %= dummyPlayer two