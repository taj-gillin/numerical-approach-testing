execute at @e[tag=current,limit=1] facing entity @s eyes positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["trig"]}
execute store result score #cos vars run data get entity @e[type=marker,tag=trig,limit=1] Pos[0] 1000
execute store result score #sin vars run data get entity @e[type=marker,tag=trig,limit=1] Pos[2] 1000

tellraw @a [{"text":"Cos: "},{"score":{"name": "#cos","objective": "vars"}},{"text":" Sin: "},{"score":{"name": "#sin","objective": "vars"}}]

kill @e[tag=trig]