#
execute as @e[tag=projectile] at @s run function taj:calculate/main


execute as @e[tag=projectile] store result entity @s Pos[0] double 0.001 run scoreboard players get @s pos.x
execute as @e[tag=projectile] store result entity @s Pos[1] double 0.001 run scoreboard players get @s pos.y
execute as @e[tag=projectile] store result entity @s Pos[2] double 0.001 run scoreboard players get @s pos.z
