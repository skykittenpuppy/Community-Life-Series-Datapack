scoreboard players operation @s seconds = @s time
scoreboard players operation @s seconds /= dummyPlayer twenty 
scoreboard players operation @s seconds %= dummyPlayer sixty 
scoreboard players operation @s minutes = @s time
scoreboard players operation @s minutes /= dummyPlayer twelvehundred 
scoreboard players operation @s minutes %= dummyPlayer sixty 
scoreboard players operation @s hours = @s time
scoreboard players operation @s hours /= dummyPlayer seventytwothousand 
data merge storage limitedlife:padding {hours_padding:"",minutes_padding:"",seconds_padding:""}
execute if score @s hours matches 0..9 run data merge storage limitedlife:padding {hours_padding:"0"}
execute if score @s minutes matches 0..9 run data merge storage limitedlife:padding {minutes_padding:"0"}
execute if score @s seconds matches 0..9 run data merge storage limitedlife:padding {seconds_padding:"0"}
title @s[scores={time=..0}] actionbar {"text": "Out of Time", "color": "gray"}
title @s[scores={time=1..575999}] actionbar [{"nbt":"hours_padding", "storage": "limitedlife:padding", "color": "red"},{"score": {"name": "@s", "objective": "hours"}},":",{"nbt":"minutes_padding", "storage":"limitedlife:padding"},{"score": {"name": "@s", "objective": "minutes"}},":",{"nbt":"seconds_padding", "storage":"limitedlife:padding"},{"score": {"name": "@s", "objective": "seconds"}}]
title @s[scores={time=576000..1151999}] actionbar [{"nbt":"hours_padding", "storage": "limitedlife:padding", "color": "yellow"},{"score": {"name": "@s", "objective": "hours"}},":",{"nbt":"minutes_padding", "storage":"limitedlife:padding"},{"score": {"name": "@s", "objective": "minutes"}},":",{"nbt":"seconds_padding", "storage":"limitedlife:padding"},{"score": {"name": "@s", "objective": "seconds"}}]
title @s[scores={time=1152000..}] actionbar [{"nbt":"hours_padding", "storage": "limitedlife:padding", "color": "green"},{"score": {"name": "@s", "objective": "hours"}},":",{"nbt":"minutes_padding", "storage":"limitedlife:padding"},{"score": {"name": "@s", "objective": "minutes"}},":",{"nbt":"seconds_padding", "storage":"limitedlife:padding"},{"score": {"name": "@s", "objective": "seconds"}}]
