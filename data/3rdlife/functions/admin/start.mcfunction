title @a title {"text": "3rd Life has begun", "color": "green"}

time set 0t
gamerule keepInventory false

scoreboard objectives add death deathCount
scoreboard objectives add lives dummy

scoreboard objectives setdisplay list lives

scoreboard players set @a death 0
scoreboard players set @a lives 3

team add gray
team add red
team add yellow
team add green

team modify gray color gray
team modify red color red
team modify yellow color yellow
team modify green color green