function lifeseries:admin/stop
function lifeseries:components/worldborder/reposition
function lifeseries:components/clear
scoreboard players set 3rdlife constants 1

scoreboard players set @a death 0
scoreboard players set @a givelife 0

scoreboard players set paused constants 0
scoreboard players set @a lives 3
gamerule keepInventory false

title @a title {"text": "3rd Life has begun", "color": "green"}