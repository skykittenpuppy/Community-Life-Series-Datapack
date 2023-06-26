data merge storage lifeseries:display {lives:"",boogeyman:""}
execute if entity @s[tag=boogeyman] run data merge storage lifeseries:display {boogeyman:" 🗡"}

title @s[scores={lives=..0}] actionbar {"text": "Out of Lives", "color": "gray"}
title @s[scores={lives=1}] actionbar [{"text": "❤", "color": "red"},{"score": {"name": "@s", "objective": "lives"}, "color": "red"},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
title @s[scores={lives=2}] actionbar [{"text": "❤", "color": "yellow"},{"score": {"name": "@s", "objective": "lives"}, "color": "yellow"},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
title @s[scores={lives=3}] actionbar [{"text": "❤", "color": "green"},{"score": {"name": "@s", "objective": "lives"}, "color": "green"},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
title @s[scores={lives=4..}] actionbar [{"text": "❤", "color": "dark_green"},{"score": {"name": "@s", "objective": "lives"}, "color": "dark_green"},{"nbt":"boogeyman", "storage": "lifeseries:display", "color": "light_purple"}]
