summon armor_stand ~ ~ ~ {Tags:["satellite","new","unmovable"],Invulnerable:1b,Small:1b}

scoreboard players set @s acc.x 0
scoreboard players set @s acc.z 0
scoreboard players set @s vel.x 0
scoreboard players set @s vel.z 0

execute store result score @s pos.x run data get entity @s Pos[0] 1000
execute store result score @s pos.z run data get entity @s Pos[2] 1000

scoreboard players set @s mass 100

tag @e[tag=new] remove new