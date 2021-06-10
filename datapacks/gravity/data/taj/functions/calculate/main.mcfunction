# Mark entity
tag @s add current

# Cash entity data values
scoreboard players operation #current pos.x = @s pos.x
scoreboard players operation #current pos.z = @s pos.z

scoreboard players operation #current vel.x = @s vel.x
scoreboard players operation #current vel.z = @s vel.z

scoreboard players operation #current acc.x = @s acc.x
scoreboard players operation #current acc.z = @s acc.z

# Calculate acceleration
scoreboard players set #delta acc.x 0
scoreboard players set #delta acc.z 0

execute as @e[tag=satellite,tag=!current] run function taj:calculate/acceleration
scoreboard players operation #delta acc.x *= $time_step const
scoreboard players operation @s acc.x = #delta acc.x
scoreboard players operation #delta acc.z *= $time_step const
scoreboard players operation @s acc.z = #delta acc.z



# Calculate velocity
scoreboard players set #delta vel.x 0
scoreboard players operation #delta vel.x = @s acc.x
scoreboard players operation #delta vel.x *= $time_step const
scoreboard players operation @s vel.x += #delta vel.x

scoreboard players set #delta vel.z 0
scoreboard players operation #delta vel.z = @s acc.z
scoreboard players operation #delta vel.z *= $time_step const
scoreboard players operation @s vel.z += #delta vel.z
# Calculate position
scoreboard players set #delta pos.x 0
scoreboard players operation #delta pos.x = @s vel.x
scoreboard players operation #delta pos.x *= $time_step const
scoreboard players operation #delta pos.x /= #scale const
scoreboard players operation @s dpos.x = #delta pos.x

scoreboard players set #delta pos.z 0
scoreboard players operation #delta pos.z = @s vel.z
scoreboard players operation #delta pos.z *= $time_step const
scoreboard players operation #delta pos.z /= #scale const
scoreboard players operation @s dpos.z = #delta pos.z

tag @s remove current


# Apply values
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s pos.x
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s pos.z