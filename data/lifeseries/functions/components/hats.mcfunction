execute as @a unless score @s hattype matches 1.. run scoreboard players set @s hattype 1
execute store result storage lifeseries:hatinfo cmd int 1 run scoreboard players get @s hattype
execute store result storage lifeseries:hatinfo clr int 1 run scoreboard players get @s hatcolour

execute as @a run item replace entity @s armor.head with leather_horse_armor{display:{Name:'{"text":"Hat","color":"light_blue","italic": false}', Lore:['{"text":"A Fancy Hat","italic": false}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:65}
execute as @a run item modify entity @s armor.head lifeseries:sethat
