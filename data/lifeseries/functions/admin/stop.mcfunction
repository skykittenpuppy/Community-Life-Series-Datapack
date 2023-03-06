function 3rdlife:admin/stop
function lastlife:admin/stop
function doublelife:admin/stop
function limitedlife:admin/stop
execute if score dummyPlayer 3rdlife matches 1.. run title @a title {"text": "3rd Life has ended", "color": "red"}
execute if score dummyPlayer lastlife matches 1.. run title @a title {"text": "Last Life has ended", "color": "red"}
execute if score dummyPlayer doublelife matches 1.. run title @a title {"text": "Double Life has ended", "color": "red"}
execute if score dummyPlayer limitedlife matches 1.. run title @a title {"text": "Limited Life has ended", "color": "red"}
scoreboard objectives remove 3rdlife
scoreboard objectives remove lastlife
scoreboard objectives remove doublelife
scoreboard objectives remove limitedlife
gamemode spectator @a