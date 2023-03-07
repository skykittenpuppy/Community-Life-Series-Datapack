scoreboard players enable @a clearinv
scoreboard players enable @a paused

execute if score dummyPlayer paused matches 0 if score dummyPlayer 3rdlife matches 1 run function 3rdlife:tick
execute if score dummyPlayer paused matches 0 if score dummyPlayer lastlife matches 1 run function lastlife:tick
execute if score dummyPlayer paused matches 0 if score dummyPlayer doublelife matches 1 run function doublelife:tick
execute if score dummyPlayer paused matches 0 if score dummyPlayer limitedlife matches 1 run function limitedlife:tick