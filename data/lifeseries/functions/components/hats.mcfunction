item replace entity @a armor.head with leather_horse_armor{display:{Name:'{"text":"Hat","color":"light_blue","italic": false}', Lore:['{"text":"A Fancy Hat","italic": false}']},Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],HideFlags:65}
execute as @a if score @s hattype matches ..0 run scoreboard players set @s hattype 1
execute store result storage lifeseries:hatinfo cmd int 1 run scoreboard players get @s hattype
execute store result storage lifeseries:hatinfo clr int 1 run scoreboard players get @s hatcolour
item modify entity @s armor.head lifeseries:sethat