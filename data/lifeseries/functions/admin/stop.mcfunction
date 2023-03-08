execute if score 3rdlife constants matches 1.. run title @a title {"text": "3rd Life has ended", "color": "red"}
execute if score lastlife constants matches 1.. run title @a title {"text": "Last Life has ended", "color": "red"}
execute if score doublelife constants matches 1.. run title @a title {"text": "Double Life has ended", "color": "red"}
execute if score limitedlife constants matches 1.. run title @a title {"text": "Limited Life has ended", "color": "red"}
scoreboard players set 3rdlife constants 0
scoreboard players set lastlife constants 0
scoreboard players set doublelife constants 0
scoreboard players set limitedlife constants 0