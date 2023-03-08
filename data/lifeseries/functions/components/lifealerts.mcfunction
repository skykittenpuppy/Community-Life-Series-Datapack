execute if score lifeRevealTimer constants matches 6000 run tellraw @a {"text": "Lives are being revealed in 5 minutes.", "color": "gray"}
execute if score lifeRevealTimer constants matches 1200 run tellraw @a {"text": "Lives are being revealed in 1 minute.", "color": "gray"}
execute if score lifeRevealTimer constants matches 300 run tellraw @a {"text": "Lives are about to be revealed.", "color": "gray"}
execute if score lifeRevealTimer constants matches 260 run title @a title {"text": "3...", "color": "gray"}
execute if score lifeRevealTimer constants matches 260 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score lifeRevealTimer constants matches 220 run title @a title {"text": "2...", "color": "gray"}
execute if score lifeRevealTimer constants matches 220 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score lifeRevealTimer constants matches 180 run title @a title {"text": "1...", "color": "gray"}
execute if score lifeRevealTimer constants matches 180 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score lifeRevealTimer constants matches 140 run title @a title {"text": "You have...", "color": "gray"}
execute if score lifeRevealTimer constants matches 140 as @a at @s run playsound lifeseries:boogey.suspense master @s ~ ~ ~

execute if score lifeRevealTimer constants matches 1..40 as @a store result score @s templives run data get entity @e[sort=random, limit=1] UUID[0] 0.25
execute if score lifeRevealTimer constants matches 1..40 run scoreboard players operation @a templives %= randomLifeRange constants
execute if score lifeRevealTimer constants matches 1..40 run scoreboard players add @a templives 2

execute if score lifeRevealTimer constants matches 40 run title @a times 0 70 30
execute if score lifeRevealTimer constants matches 1 run title @a times 10 70 20
execute if score lifeRevealTimer constants matches 1..40 run title @a[scores={templives=2}] title {"text": "2 Lives", "color": "yellow"}
execute if score lifeRevealTimer constants matches 1..40 run title @a[scores={templives=3}] title {"text": "3 Lives", "color": "green"}
execute if score lifeRevealTimer constants matches 1..40 run title @a[scores={templives=4}] title {"text": "4 Lives", "color": "dark_green"}
execute if score lifeRevealTimer constants matches 1..40 run title @a[scores={templives=5}] title {"text": "5 Lives", "color": "dark_green"}
execute if score lifeRevealTimer constants matches 2..40 as @a at @s run playsound ui.button.click master @s ~ ~ ~
execute if score lifeRevealTimer constants matches 1 as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~

execute if score lifeRevealTimer constants matches 1 as @a run scoreboard players operation @s lives = @s templives
execute if score lifeRevealTimer constants matches 1 run scoreboard players set @a death 0

execute if score lifeRevealTimer constants matches 1.. run scoreboard players remove lifeRevealTimer constants 1

execute if score lifeRevealTimer constants matches 1.. store result bossbar livesreveal value run scoreboard players get lifeRevealTimer constants
execute if score lifeRevealTimer constants matches 1.. run bossbar set livesreveal max 6000
execute if score lifeRevealTimer constants matches 1.. run bossbar set livesreveal visible true
execute if score lifeRevealTimer constants matches 0 run bossbar set livesreveal visible false