execute as @a at @s run playsound entity.lightning_bolt.thunder master @s ~ ~ ~
tellraw @a [{"selector": "@s", "color": "red"}, {"text": " has run out of time."}]
