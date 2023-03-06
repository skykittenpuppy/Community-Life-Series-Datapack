execute store result bossbar boogeyreveal value run scoreboard players get dummyPlayer boogeyTimer
execute if score dummyPlayer boogeyTimer matches 1.. run bossbar set boogeyreveal visible true

execute if score dummyPlayer boogeyTimer matches 6100 run tellraw @a {"text": "The Boogeyman is being chosen in 5 minutes", "color": "red"}
execute if score dummyPlayer boogeyTimer matches 220 run tellraw @a {"text": "3...", "color": "red"}
execute if score dummyPlayer boogeyTimer matches 180 run tellraw @a {"text": "2...", "color": "red"}
execute if score dummyPlayer boogeyTimer matches 140 run tellraw @a {"text": "1...", "color": "red"}
execute if score dummyPlayer boogeyTimer matches 100 run title @a title {"text": "You are...", "color": "yellow"}

execute if score dummyPlayer boogeyTimer matches 1 run scoreboard players set @r[scores={isBoogey=0,lives=2..}] isBoogey 1
execute if score dummyPlayer boogeyTimer matches 1 run title @a[scores={isBoogey=0}] title {"text": "NOT the Boogeyman", "color": "green"}
execute if score dummyPlayer boogeyTimer matches 1 run title @a[scores={isBoogey=1}] title {"text": "The Boogeyman", "color": "red"}

execute if score dummyPlayer boogeyTimer matches 1.. run scoreboard players remove dummyPlayer boogeyTimer 1