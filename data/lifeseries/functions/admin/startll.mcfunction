function lifeseries:admin/stop
function lifeseries:components/worldborder/reposition
function lifeseries:components/clear
scoreboard players set gamemode constants 2

scoreboard players set @a death 0
scoreboard players set @a givelife 0

scoreboard players set paused constants 0
scoreboard players set lifeRevealTimer constants 6000
scoreboard players set @a lives 3
gamerule doLimitedCrafting true
gamerule keepInventory false
recipe take @a enchanting_table
execute at @r positioned over motion_blocking_no_leaves run setblock ~ ~ ~ enchanting_table

title @a title {"text": "Last Life has begun", "color": "green"}