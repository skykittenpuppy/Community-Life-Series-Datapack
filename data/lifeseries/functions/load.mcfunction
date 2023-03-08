scoreboard objectives add constants dummy
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard players set 1200 constants 1200
scoreboard players set 72000 constants 72000
scoreboard players set randomLifeRange constants 4
scoreboard objectives add lives dummy
scoreboard objectives add templives dummy
scoreboard objectives add ticks dummy
scoreboard objectives add hours dummy
scoreboard objectives add minutes dummy
scoreboard objectives add seconds dummy
scoreboard objectives add death deathCount
scoreboard objectives add clearinv trigger
scoreboard objectives add givelife trigger

bossbar add livesreveal {"text":"Lives revealed in:","color": "gray"}
bossbar set livesreveal players @a
bossbar set livesreveal color white
bossbar set livesreveal visible false
bossbar add boogeyreveal {"text":"Boogeyman revealed in:","color": "red"}
bossbar set boogeyreveal players @a
bossbar set boogeyreveal color red
bossbar set boogeyreveal visible false

team add gray
team modify gray color gray
team add red
team modify red color red
team add yellow
team modify yellow color yellow
team add green
team modify green color green
team add dark_green
team modify dark_green color dark_green