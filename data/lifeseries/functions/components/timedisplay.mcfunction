scoreboard players operation @s seconds = @s ticks
scoreboard players operation @s minutes = @s ticks
scoreboard players operation @s hours = @s ticks
scoreboard players operation @s seconds /= 20 constants 
scoreboard players operation @s minutes /= 1200 constants 
scoreboard players operation @s hours /= 72000 constants 
scoreboard players operation @s seconds %= 60 constants 
scoreboard players operation @s minutes %= 60 constants 

data merge storage lifeseries:display {boogeyman:"",hours_padding:"",minutes_padding:"",seconds_padding:""}
execute if score @s hours matches 0..9 run data merge storage lifeseries:display {hours_padding:"0"}
execute if score @s minutes matches 0..9 run data merge storage lifeseries:display {minutes_padding:"0"}
execute if score @s seconds matches 0..9 run data merge storage lifeseries:display {seconds_padding:"0"}
execute if entity @s[tag=boogeyman] run data merge storage lifeseries:display {boogeyman:" 🗡"}

title @s[scores={ticks=..0}] actionbar {"text": "Out of Time", "color": "gray"}
title @s[scores={ticks=1..576000}] actionbar [{"nbt":"hours_padding", "storage": "lifeseries:display", "color": "red"},{"score": {"name": "@s", "objective": "hours"}},":",{"nbt":"minutes_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "minutes"}},":",{"nbt":"seconds_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "seconds"}},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
title @s[scores={ticks=576001..1152000}] actionbar [{"nbt":"hours_padding", "storage": "lifeseries:display", "color": "yellow"},{"score": {"name": "@s", "objective": "hours"}},":",{"nbt":"minutes_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "minutes"}},":",{"nbt":"seconds_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "seconds"}},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
title @s[scores={ticks=1152001..1728000}] actionbar [{"nbt":"hours_padding", "storage": "lifeseries:display", "color": "green"},{"score": {"name": "@s", "objective": "hours"}},":",{"nbt":"minutes_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "minutes"}},":",{"nbt":"seconds_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "seconds"}},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
title @s[scores={ticks=1728001..}] actionbar [{"nbt":"hours_padding", "storage": "lifeseries:display", "color": "dark_green"},{"score": {"name": "@s", "objective": "hours"}},":",{"nbt":"minutes_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "minutes"}},":",{"nbt":"seconds_padding", "storage":"lifeseries:display"},{"score": {"name": "@s", "objective": "seconds"}},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
