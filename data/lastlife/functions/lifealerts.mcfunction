execute store result bossbar livesreveal value run scoreboard players get dummyPlayer lifeRevealTimer
execute if score dummyPlayer lifeRevealTimer matches 1.. run bossbar set livesreveal visible true

execute if score dummyPlayer lifeRevealTimer matches 6120 run tellraw @a {"text": "Lives are being chosen in 5 minutes", "color": "yellow"}
execute if score dummyPlayer lifeRevealTimer matches 240 run tellraw @a {"text": "3...", "color": "yellow"}
execute if score dummyPlayer lifeRevealTimer matches 200 run tellraw @a {"text": "2...", "color": "yellow"}
execute if score dummyPlayer lifeRevealTimer matches 160 run tellraw @a {"text": "1...", "color": "yellow"}
execute if score dummyPlayer lifeRevealTimer matches 120 run title @a title {"text": "You have...", "color": "yellow"}

execute if score dummyPlayer lifeRevealTimer matches 1..19 as @a store result score @s templives run data get entity @e[sort=random, limit=1] UUID[0] 0.25
execute if score dummyPlayer lifeRevealTimer matches 1..19 run scoreboard players operation @a templives %= dummyPlayer range
execute if score dummyPlayer lifeRevealTimer matches 1..19 run scoreboard players add @a templives 2

execute if score dummyPlayer lifeRevealTimer matches 20 run title @a times 0 70 30
execute if score dummyPlayer lifeRevealTimer matches 1..19 run title @a[scores={templives=2}] title {"text": "2 Lives", "color": "yellow"}
execute if score dummyPlayer lifeRevealTimer matches 1..19 run title @a[scores={templives=3}] title {"text": "3 Lives", "color": "green"}
execute if score dummyPlayer lifeRevealTimer matches 1..19 run title @a[scores={templives=4}] title {"text": "4 Lives", "color": "dark_green"}
execute if score dummyPlayer lifeRevealTimer matches 1..19 run title @a[scores={templives=5}] title {"text": "5 Lives", "color": "dark_green"}
execute if score dummyPlayer lifeRevealTimer matches 1 run title @a times 10 70 20

execute if score dummyPlayer lifeRevealTimer matches 1 as @a run scoreboard players operation @s lives = @s templives
execute if score dummyPlayer lifeRevealTimer matches 1 run scoreboard objectives setdisplay list lives

execute if score dummyPlayer lifeRevealTimer matches 1.. run scoreboard players remove dummyPlayer lifeRevealTimer 1