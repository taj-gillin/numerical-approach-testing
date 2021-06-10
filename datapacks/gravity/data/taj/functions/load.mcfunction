# Scoreboards
## Position
#scoreboard objectives remove pos.x
scoreboard objectives add pos.x dummy

#scoreboard objectives remove pos.z
scoreboard objectives add pos.z dummy

#scoreboard objectives remove dpos.x
scoreboard objectives add dpos.x dummy

#scoreboard objectives remove dpos.z
scoreboard objectives add dpos.z dummy

## Velocity
#scoreboard objectives remove vel.x
scoreboard objectives add vel.x dummy

#scoreboard objectives remove vel.z
scoreboard objectives add vel.z dummy

## Acceleration
#scoreboard objectives remove acc.x
scoreboard objectives add acc.x dummy

#scoreboard objectives remove acc.z
scoreboard objectives add acc.z dummy

## Constants
scoreboard objectives remove const
scoreboard objectives add const dummy

# Value of G is 1000^3 over whatever that is
scoreboard players set $G const 100

scoreboard players set -1 const -1
scoreboard players set 10000 const 10000
scoreboard players set #scale const 10000

scoreboard players set $time_step const 1

## Other variables
#scoreboard objectives remove mass
scoreboard objectives add mass dummy

scoreboard objectives remove vars
scoreboard objectives add vars dummy
