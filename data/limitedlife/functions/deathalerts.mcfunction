playsound entity.lightning_bolt.impact master @a ~ ~ ~ 1
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2
tellraw @a [{"selector": "@s", "color": "red"}, {"text": " has run out of time."}]
scoreboard players set @s time -1152000