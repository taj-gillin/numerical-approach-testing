summon armor_stand ~ ~ ~ {Tags:["projectile","new"],Invulnerable:1b,NoGravity:1b}

scoreboard players set @e[tag=new] mass 30
scoreboard players set @e[tag=new] b 2

scoreboard players set @e[tag=new] acc.x 0
scoreboard players set @e[tag=new] acc.y 0
scoreboard players set @e[tag=new] acc.z 0

scoreboard players set @e[tag=new] vel.x -2000
scoreboard players set @e[tag=new] vel.y 0
scoreboard players set @e[tag=new] vel.z 0

execute as @e[tag=new] store result score @s pos.x run data get entity @s Pos[0] 1000
execute as @e[tag=new] store result score @s pos.y run data get entity @s Pos[1] 1000
execute as @e[tag=new] store result score @s pos.z run data get entity @s Pos[2] 1000

tag @e remove new



summon armor_stand ~ ~ ~ {Tags:["projectile","new"],Invulnerable:1b,NoGravity:1b}

scoreboard players set @e[tag=new] mass 50
scoreboard players set @e[tag=new] b 2

scoreboard players set @e[tag=new] acc.x 0
scoreboard players set @e[tag=new] acc.y 0
scoreboard players set @e[tag=new] acc.z 0

scoreboard players set @e[tag=new] vel.x -2000
scoreboard players set @e[tag=new] vel.y 0
scoreboard players set @e[tag=new] vel.z 0

execute as @e[tag=new] store result score @s pos.x run data get entity @s Pos[0] 1000
execute as @e[tag=new] store result score @s pos.y run data get entity @s Pos[1] 1000
execute as @e[tag=new] store result score @s pos.z run data get entity @s Pos[2] 1000

tag @e remove new


summon armor_stand ~ ~ ~ {Tags:["projectile","new"],Invulnerable:1b,NoGravity:1b}

scoreboard players set @e[tag=new] mass 10
scoreboard players set @e[tag=new] b 2

scoreboard players set @e[tag=new] acc.x 0
scoreboard players set @e[tag=new] acc.y 0
scoreboard players set @e[tag=new] acc.z 0

scoreboard players set @e[tag=new] vel.x -2000
scoreboard players set @e[tag=new] vel.y 0
scoreboard players set @e[tag=new] vel.z 0

execute as @e[tag=new] store result score @s pos.x run data get entity @s Pos[0] 1000
execute as @e[tag=new] store result score @s pos.y run data get entity @s Pos[1] 1000
execute as @e[tag=new] store result score @s pos.z run data get entity @s Pos[2] 1000

tag @e remove new