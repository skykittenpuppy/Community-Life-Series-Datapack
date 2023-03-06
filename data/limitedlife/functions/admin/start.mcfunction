title @a title {"text": "Limited Life has begun", "color": "green"}

time set 0t
gamerule keepInventory true

bossbar add boogeyreveal {"text": "Boogey revealed in:", "color": "red"}
bossbar set boogeyreveal max 6100
bossbar set boogeyreveal players @a 
bossbar set boogeyreveal color red

scoreboard objectives add death deathCount
scoreboard objectives add time dummy
scoreboard objectives add isBoogey dummy
scoreboard objectives add boogeyTimer dummy
scoreboard objectives add seconds dummy
scoreboard objectives add minutes dummy
scoreboard objectives add hours dummy
scoreboard objectives add twenty dummy
scoreboard objectives add twelvehundred dummy
scoreboard objectives add seventytwothousand dummy
scoreboard objectives add sixty dummy

scoreboard objectives setdisplay list hours

scoreboard players set @a death 0
scoreboard players set @a time 1728000
scoreboard players set @a isBoogey 0
scoreboard players set dummyPlayer boogeyTimer 0
scoreboard players set dummyPlayer twenty 20
scoreboard players set dummyPlayer twelvehundred 1200
scoreboard players set dummyPlayer seventytwothousand 72000
scoreboard players set dummyPlayer sixty 60

team add gray
team add red
team add yellow
team add green

team modify gray color gray
team modify red color red
team modify yellow color yellow
team modify green color green