# Mark entity
tag @s add current

scoreboard players operation #current pos.x = @s pos.x
scoreboard players operation #current pos.z = @s pos.z

# Iterate over other satellites to calculate acceleration
scoreboard players set #total acc.x 0
scoreboard players set #total acc.z 0
execute as @e[tag=satellite,tag=!current] run function taj:calculate/acceleration

tellraw @a [{"text":"Ax: "},{"score":{"name": "#total","objective": "acc.x"}},{"text":" Az: "},{"score":{"name": "#total","objective": "acc.z"}}]

# Calculate velocity; v+=at
scoreboard players operation #delta vel.x = #total acc.x
scoreboard players operation #delta vel.x *= $time_step const
scoreboard players operation @s vel.x += #delta vel.x

scoreboard players operation #delta vel.z = #total acc.z
scoreboard players operation #delta vel.z *= $time_step const
scoreboard players operation @s vel.z += #delta vel.z

# Calculate position x+=vt (actually add to position later to keep calculations uniform)
scoreboard players operation @s dpos.x = @s vel.x
scoreboard players operation @s dpos.x *= $time_step const

scoreboard players operation @s dpos.z = @s vel.z
scoreboard players operation @s dpos.z *= $time_step const

# Remove mark
tag @s remove current

