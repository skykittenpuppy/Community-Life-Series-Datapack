execute if score gamemode constants matches 1 run title @a title {"text": "3rd Life has ended", "color": "red"}
execute if score gamemode constants matches 2 run title @a title {"text": "Last Life has ended", "color": "red"}
execute if score gamemode constants matches 4 run title @a title {"text": "Limited Life has ended", "color": "red"}
scoreboard players set gamemode constants 0
team join green @a
gamemode adventure @a