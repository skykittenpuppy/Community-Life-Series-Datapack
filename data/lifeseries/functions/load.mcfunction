scoreboard objectives add constants dummy
scoreboard players set 72000 constants 72000
scoreboard players set 1200 constants 1200
scoreboard players set 60 constants 60
scoreboard players set 20 constants 20
scoreboard players set 10 constants 10
execute unless score gamemode constants = gamemode constants run scoreboard players set gamemode constants 0

scoreboard objectives add configs dummy
execute unless score boogeyChance configs = boogeyChance configs run scoreboard players set boogeyChance configs 12
execute unless score widthPerPlayer configs = widthPerPlayer configs run scoreboard players set widthPerPlayer configs 50
execute unless score randomLifeMin configs = randomLifeMin configs run scoreboard players set randomLifeMin configs 2
execute unless score randomLifeRange configs = randomLifeRange configs run scoreboard players set randomLifeRange configs 5
execute unless score clearinv configs = clearinv configs run scoreboard players set clearinv configs 1

scoreboard objectives add lives dummy
scoreboard objectives add templives dummy
scoreboard objectives add ticks dummy
scoreboard objectives add hours dummy
scoreboard objectives add minutes dummy
scoreboard objectives add seconds dummy
scoreboard objectives add boogeyRandom dummy
scoreboard objectives add death deathCount
scoreboard objectives add givelife trigger

bossbar add livesreveal {"text":"Lives revealed in:","color": "gray"}
bossbar set livesreveal players @a
bossbar set livesreveal color white
bossbar set livesreveal visible false
bossbar add boogeyreveal {"text":"Boogeyman revealed in:","color": "light_purple"}
bossbar set boogeyreveal players @a
bossbar set boogeyreveal color red
bossbar set boogeyreveal visible false

team add cameo
team modify cameo color dark_purple
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