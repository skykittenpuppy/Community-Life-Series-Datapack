function lifeseries:admin/stop
function lifeseries:components/worldborder/reposition
function lifeseries:components/clear
scoreboard players set lastlife constants 1

scoreboard players set @a death 0
scoreboard players set @a givelife 0

scoreboard players set paused constants 0
scoreboard players set lifeRevealTimer constants 6000
scoreboard players set @a lives 0
gamerule keepInventory true

title @a title {"text": "Last Life has begun", "color": "green"}