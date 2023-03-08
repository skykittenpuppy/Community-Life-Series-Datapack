execute as @a[scores={death=1..}] as @a at @a run playsound entity.lightning_bolt.thunder master @s ~ ~ ~
scoreboard players remove @a[scores={death=1..}] lives 1
scoreboard players set @a[scores={death=1..}] death 0