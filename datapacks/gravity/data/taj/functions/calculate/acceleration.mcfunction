# Caculate x acceleration
scoreboard players set #calc vars 0

## Calculate 
scoreboard players operation #delta vars = @s pos.x
scoreboard players operation #delta vars -= #current pos.x 

## Numerator = G * m
scoreboard players operation #numerator vars = $G const
scoreboard players operation #numerator vars *= @s mass
scoreboard players operation #numerator vars *= #scale const
execute if score #delta vars matches ..0 run scoreboard players operation #numerator vars *= -1 const

## Denominator = |r^2|
scoreboard players operation #denominator vars = #delta vars
scoreboard players operation #denominator vars *= #delta vars

## Calculate acceleration using numerator and demoninator
scoreboard players operation #calc vars = #numerator vars
scoreboard players operation #calc vars /= #denominator vars


## Add to total
scoreboard players operation #delta acc.x += #calc vars



# Caculate z acceleration
scoreboard players set #calc vars 0

## Calculate 
scoreboard players operation #delta vars = @s pos.z
scoreboard players operation #delta vars -= #current pos.z 

## Numerator = G * m
scoreboard players operation #numerator vars = $G const
scoreboard players operation #numerator vars *= @s mass
scoreboard players operation #numerator vars *= #scale const
execute if score #delta vars matches ..0 run scoreboard players operation #numerator vars *= -1 const

## Denominator = |r^2|
scoreboard players operation #denominator vars = #delta vars
scoreboard players operation #denominator vars *= #delta vars

## Calculate acceleration using numerator and demoninator
scoreboard players operation #calc vars = #numerator vars
scoreboard players operation #calc vars /= #denominator vars


## Add to total
scoreboard players operation #delta acc.z += #calc vars

