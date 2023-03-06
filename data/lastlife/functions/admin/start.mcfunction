title @a title {"text": "Last Life has begun", "color": "green"}

time set 0t
gamerule keepInventory false
gamemode survival @a

bossbar add boogeyreveal {"text": "Boogey revealed in:", "color": "red"}
bossbar set boogeyreveal max 6100
bossbar set boogeyreveal players @a 
bossbar set boogeyreveal color red
bossbar add livesreveal {"text": "Lives revealed in:", "color": "yellow"}
bossbar set livesreveal max 6120
bossbar set livesreveal players @a 
bossbar set livesreveal color yellow

scoreboard objectives add death deathCount
scoreboard objectives add givelife trigger
scoreboard objectives add templives dummy
scoreboard objectives add lives dummy
scoreboard objectives add isBoogey dummy
scoreboard objectives add boogeyTimer dummy
scoreboard objectives add lifeRevealTimer dummy
scoreboard objectives add range dummy

scoreboard players set @a death 0
scoreboard players set @a givelife 0
scoreboard players set @a lives 0
scoreboard players set @a isBoogey 0
scoreboard players set dummyPlayer boogeyTimer 0
scoreboard players set dummyPlayer lifeRevealTimer 6120
scoreboard players set dummyPlayer range 4

team add gray
team add red
team add yellow
team add green
team add darkGreen

team modify gray color gray
team modify red color red
team modify yellow color yellow
team modify green color green
team modify darkGreen color dark_green