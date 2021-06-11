#
execute as @e[tag=satellite] run function taj:calculate/main

execute as @e[tag=satellite,tag=!unmovable] run scoreboard players operation @s pos.x += @s dpos.x
execute as @e[tag=satellite,tag=!unmovable] run scoreboard players operation @s pos.z += @s dpos.z

execute as @e[tag=satellite] store result entity @s Pos[0] double 0.001 run scoreboard players get @s pos.x
execute as @e[tag=satellite] store result entity @s Pos[2] double 0.001 run scoreboard players get @s pos.z

execute as @e[tag=satellite] at @s run particle flame ~ ~ ~ 0 0 0 0.01 2