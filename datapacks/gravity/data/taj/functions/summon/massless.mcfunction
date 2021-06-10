summon armor_stand ~ ~ ~ {Tags:["satellite","new"],Invulnerable:1b,Small:1b,NoGravity:1b}

scoreboard players set @e[tag=new] acc.x 0
scoreboard players set @e[tag=new] acc.z 0
scoreboard players set @e[tag=new] vel.x 0
scoreboard players set @e[tag=new] vel.z 0

execute as @e[tag=new] store result score @s pos.x run data get entity @s Pos[0] 1000
execute as @e[tag=new] store result score @s pos.z run data get entity @s Pos[2] 1000

scoreboard players set @e[tag=new] mass 0

tag @e[tag=new] remove new