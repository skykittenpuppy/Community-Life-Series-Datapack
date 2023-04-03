tag @s add boogeyman

title @s title {"text": "You are The Boogeyman", "color": "red"}
execute if score lastlife constants matches 1.. run tellraw @s [{"text":"You are the boogeyman. You must by any means necessary kill another player by direct action to be cured of the curse. If you fail, next session you will become a ","color":"gray"},{"text":"red name","color":"red"},{"text":". All loyalties and friendships are removed while you are the boogeyman."}]
execute if score limitedlife constants matches 1.. run tellraw @s [{"text":"You are the boogeyman. You must by any means necessary kill another player by direct action to be cured of the curse. If you fail, next session you will drop down to the next colour. All loyalties and friendships are removed while you are the boogeyman.","color":"gray"}]
playsound lifeseries:boogey.boogey master @s ~ ~ ~