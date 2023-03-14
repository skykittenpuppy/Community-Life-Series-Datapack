execute if score 3rdlife constants matches 1.. run tellraw @s {"text":"Tutorial coming soon. (tm)","color": "gray"}
execute if score lastlife constants matches 1.. run tellraw @s {"text":"Tutorial coming soon. (tm)","color": "gray"}
execute if score doublelife constants matches 1.. run tellraw @s {"text":"Tutorial coming soon. (tm)","color": "gray"}
execute if score limitedlife constants matches 1.. run tellraw @s {"text":"Tutorial coming soon. (tm)","color": "gray"}
execute if score 3rdlife constants matches ..0 if score lastlife constants matches ..0 if score doublelife constants matches ..0 if score limitedlife constants matches ..0 run tellraw @s {"text":"No mode selected","color": "gray"}
scoreboard players set @s tutorial 0