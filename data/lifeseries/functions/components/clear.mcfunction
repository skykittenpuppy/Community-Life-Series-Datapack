execute if score clearinv constants matches 1.. run clear @a
execute if score clearinv constants matches 1.. run xp set @a 0 points
execute if score clearinv constants matches 1.. run xp set @a 0 levels
recipe give @a *
effect give @a instant_health 1 255 true
effect give @a saturation 1 255 true
time set 0t
weather clear