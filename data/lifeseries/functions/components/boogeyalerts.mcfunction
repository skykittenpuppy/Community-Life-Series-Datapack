execute if score boogeyTimer constants matches 6000 run tellraw @a {"text": "The Boogeyman is being chosen in 5 minutes.", "color": "red"}
execute if score boogeyTimer constants matches 1200 run tellraw @a {"text": "The Boogeyman is being chosen in 1 minute.", "color": "red"}
execute if score boogeyTimer constants matches 300 run tellraw @a {"text": "The Boogeyman is about to be chosen.", "color": "red"}
execute if score boogeyTimer constants matches 300 as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~
execute if score boogeyTimer constants matches 220 run title @a title {"text": "3...", "color": "red"}
execute if score boogeyTimer constants matches 220 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score boogeyTimer constants matches 180 run title @a title {"text": "2...", "color": "red"}
execute if score boogeyTimer constants matches 180 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score boogeyTimer constants matches 140 run title @a title {"text": "1...", "color": "red"}
execute if score boogeyTimer constants matches 140 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score boogeyTimer constants matches 100 run title @a title {"text": "You are...", "color": "yellow"}
execute if score boogeyTimer constants matches 100 as @a at @s run playsound lifeseries:boogey.suspense master @s ~ ~ ~

execute if score boogeyTimer constants matches 1 if score lastlife constants matches 1.. run tag @r[tag=!boogeyman,scores={lives=2..}] add boogeyman
execute if score boogeyTimer constants matches 1 if score limitedlife constants matches 1.. run tag @r[tag=!boogeyman,scores={ticks=576001..}] add boogeyman

execute if score boogeyTimer constants matches 1 run title @a[tag=!boogeyman] title {"text": "NOT the Boogeyman", "color": "green"}
execute if score boogeyTimer constants matches 1 run title @a[tag=boogeyman] title {"text": "The Boogeyman", "color": "red"}
execute if score boogeyTimer constants matches 1 if score lastlife constants matches 1.. run tellraw @a[tag=boogeyman] [{"text":"You are the boogeyman. You must by any means necessary kill another player by direct action to be cured of the curse. If you fail, next session you will become a ","color":"gray"},{"text":"red name","color":"red"},{"text":". All loyalties and friendships are removed while you are the boogeyman."}]
execute if score boogeyTimer constants matches 1 if score limitedlife constants matches 1.. run tellraw @a[tag=boogeyman] [{"text":"You are the boogeyman. You must by any means necessary kill another player by direct action to be cured of the curse. If you fail, next session you will drop down to the next colour. All loyalties and friendships are removed while you are the boogeyman.","color":"gray"}]
execute if score boogeyTimer constants matches 1 as @a[tag=!boogeyman] at @s run playsound lifeseries:boogey.notboogey master @s ~ ~ ~
execute if score boogeyTimer constants matches 1 as @a[tag=boogeyman] at @s run playsound lifeseries:boogey.boogey master @s ~ ~ ~

execute if score boogeyTimer constants matches 1.. run scoreboard players remove boogeyTimer constants 1

execute if score boogeyTimer constants matches 1.. store result bossbar boogeyreveal value run scoreboard players get boogeyTimer constants
execute if score boogeyTimer constants matches 1.. if score lastlife constants matches 1.. run bossbar set boogeyreveal max 6000
execute if score boogeyTimer constants matches 1.. if score limitedlife constants matches 1.. run bossbar set boogeyreveal max 1200
execute if score boogeyTimer constants matches 1.. run bossbar set boogeyreveal visible true
execute if score boogeyTimer constants matches 0 run bossbar set boogeyreveal visible false