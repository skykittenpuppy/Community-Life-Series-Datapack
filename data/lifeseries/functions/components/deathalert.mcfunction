execute as @a at @s run playsound lifeseries:death master @s ~ ~ ~
tellraw @a [{"selector": "@s", "color": "red"}, {"text": " has run out of time."}]
