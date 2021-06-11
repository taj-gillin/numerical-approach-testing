# Sine and Cosine
function taj:calculate/trig

# dx
scoreboard players operation #delta pos.x = #current pos.x
scoreboard players operation #delta pos.x -= @s pos.x

# x acceleration = G * m * cos^3 / ∆x^2
scoreboard players operation #delta acc.x = #cos vars
scoreboard players operation #delta acc.x *= #cos vars
scoreboard players operation #delta acc.x *= #cos vars
scoreboard players operation #delta acc.x /= #delta pos.x
scoreboard players operation #delta acc.x /= #delta pos.x
scoreboard players operation #delta acc.x *= @s mass
scoreboard players operation #delta acc.x /= $G const

# add to total
scoreboard players operation #total acc.x += #delta acc.x


# dx
scoreboard players operation #delta pos.z = #current pos.z
scoreboard players operation #delta pos.z -= @s pos.z

# x acceleration = G * m * sin^3 / ∆y^2
scoreboard players operation #delta acc.z = #sin vars
scoreboard players operation #delta acc.z *= #sin vars
scoreboard players operation #delta acc.z *= #sin vars
scoreboard players operation #delta acc.z /= #delta pos.z
scoreboard players operation #delta acc.z /= #delta pos.z
scoreboard players operation #delta acc.z *= @s mass
scoreboard players operation #delta acc.z /= $G const

# add to total
scoreboard players operation #total acc.z += #delta acc.z

