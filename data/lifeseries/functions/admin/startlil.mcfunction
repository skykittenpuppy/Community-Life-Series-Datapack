function lifeseries:admin/stop
function lifeseries:components/worldborder/reposition
function lifeseries:components/clear
scoreboard players set limitedlife constants 1

scoreboard players set @a death 0
scoreboard players set @a givelife 0

scoreboard players set paused constants 0
scoreboard players set @a ticks 1728000
gamerule keepInventory true

title @a title {"text": "Limited Life has begun", "color": "green"}