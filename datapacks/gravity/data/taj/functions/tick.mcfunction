#
execute as @e[tag=satellite] run function taj:calculate/main

execute as @e[tag=satellite] run scoreboard players operation @s pos.x += @s dpos.x
execute as @e[tag=satellite] run scoreboard players operation @s pos.x += @s dpos.z

scoreboard players reset @e[tag=satellite] dpos.x
scoreboard players reset @e[tag=satellite] dpos.z

