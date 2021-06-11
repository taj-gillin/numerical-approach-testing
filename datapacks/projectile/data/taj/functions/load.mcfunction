# Scoreboards
## Position
#scoreboard objectives remove pos.x
scoreboard objectives add pos.x dummy

#scoreboard objectives remove pos.z
scoreboard objectives add pos.z dummy

#scoreboard objectives remove pos.y
scoreboard objectives add pos.y dummy

## Velocity
#scoreboard objectives remove vel.x
scoreboard objectives add vel.x dummy

#scoreboard objectives remove vel.z
scoreboard objectives add vel.z dummy

#scoreboard objectives remove vel.y
scoreboard objectives add vel.y dummy

## Acceleration
#scoreboard objectives remove acc.x
scoreboard objectives add acc.x dummy

#scoreboard objectives remove acc.z
scoreboard objectives add acc.z dummy

#scoreboard objectives remove acc.y
scoreboard objectives add acc.y dummy

#scoreboard objectives remove b
scoreboard objectives add b dummy

## Constants
scoreboard objectives remove const
scoreboard objectives add const dummy

# Value of G is 1000^3 over whatever that is
scoreboard players set $g const -98

scoreboard players set -1 const -1
scoreboard players set 10000 const 10000
scoreboard players set #scale const 10000

scoreboard players set $time_step const 1

## Other variables
#scoreboard objectives remove mass
scoreboard objectives add mass dummy

scoreboard objectives remove vars
scoreboard objectives add vars dummy
