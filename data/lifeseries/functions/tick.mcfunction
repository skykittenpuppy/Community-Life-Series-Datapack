scoreboard players enable @a clearinv
scoreboard players enable @a paused
scoreboard players enable @a checkboogey

title @a[scores={checkboogey=1..,isBoogey=0}] title {"text": "NOT the Boogeyman", "color": "green"}
title @a[scores={checkboogey=1..,isBoogey=1}] title {"text": "The Boogeyman", "color": "red"}
scoreboard players set @a[scores={checkboogey=1..}] checkboogey 0

execute if score dummyPlayer paused matches 0 if score dummyPlayer 3rdlife matches 1 run function 3rdlife:tick
execute if score dummyPlayer paused matches 0 if score dummyPlayer lastlife matches 1 run function lastlife:tick
execute if score dummyPlayer paused matches 0 if score dummyPlayer doublelife matches 1 run function doublelife:tick
execute if score dummyPlayer paused matches 0 if score dummyPlayer limitedlife matches 1 run function limitedlife:tick