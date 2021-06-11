execute unless block ~ ~ ~ air run scoreboard players set @s vel.y 2000

# Vertical

## Acceleration
scoreboard players operation @s acc.y = $g const
scoreboard players operation @s acc.y *= @s mass
scoreboard players operation #drag acc.y = @s b
scoreboard players operation #drag acc.y *= @s vel.y
scoreboard players operation @s acc.y -= #drag acc.y
scoreboard players operation @s acc.y /= @s mass

## Velocity
scoreboard players operation #delta vel.y = @s acc.y
scoreboard players operation #delta vel.y *= $time_step const
scoreboard players operation @s vel.y += #delta vel.y

## Position
scoreboard players operation #delta pos.y = @s vel.y
scoreboard players operation #delta pos.y *= $time_step const
scoreboard players operation @s pos.y += #delta pos.y


# Horizontal
## Acceleration
scoreboard players set @s acc.x -1
scoreboard players operation @s acc.x *= @s b
scoreboard players operation @s acc.x *= @s vel.x
scoreboard players operation @s acc.x /= @s mass

scoreboard players set @s acc.z -1
scoreboard players operation @s acc.z *= @s b
scoreboard players operation @s acc.z *= @s vel.z
scoreboard players operation @s acc.z /= @s mass

## Velocity
scoreboard players operation #delta vel.x = @s acc.x
scoreboard players operation #delta vel.x *= $time_step const
scoreboard players operation @s vel.x += #delta vel.x

scoreboard players operation #delta vel.z = @s acc.z
scoreboard players operation #delta vel.z *= $time_step const
scoreboard players operation @s vel.z += #delta vel.z

## Position
scoreboard players operation #delta pos.x = @s vel.x
scoreboard players operation #delta pos.x *= $time_step const
scoreboard players operation @s pos.x += #delta pos.x

scoreboard players operation #delta pos.z = @s vel.z
scoreboard players operation #delta pos.z *= $time_step const
scoreboard players operation @s pos.z += #delta pos.z