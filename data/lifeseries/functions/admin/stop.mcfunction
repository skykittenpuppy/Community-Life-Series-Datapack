execute if score gamemode constants matches 1 run title @a title {"text": "3rd Life has ended", "color": "red"}
execute if score gamemode constants matches 2 run title @a title {"text": "Last Life has ended", "color": "red"}
execute if score gamemode constants matches 4 run title @a title {"text": "Limited Life has ended", "color": "red"}
scoreboard players set gamemode constants 0
clear @a
worldborder set 16
team join green @a
gamemode spectator @a
effect give @a weakness infinite 255 true
execute at @r positioned over motion_blocking_no_leaves run tp @a 0 ~ 0