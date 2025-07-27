#> Description: Custom death animation for AbraxisPilot.
#> Comment: "Canon death is a broken flying machine" -AbraxisPilot

scoreboard objectives add temp.custom_death_animation.abraxispilot dummy

scoreboard players add &ogvz temp.custom_death_animation.abraxispilot 1

execute if score &ogvz temp.custom_death_animation.abraxispilot matches 1 summon minecraft:marker run tag @s add ogvz.marker.pilot_down

execute if score &ogvz temp.custom_death_animation.abraxispilot matches 1 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~1 ~ 0.5 0.5 0.5 1 100 force

execute if score &ogvz temp.custom_death_animation.abraxispilot matches 3 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 5 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 7 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 9 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 11 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 13 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 15 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 17 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 19 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 21 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 23 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 25 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:block.dispenser.fail player @a ~ ~ ~ 1 1
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 25 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 1

execute if score &ogvz temp.custom_death_animation.abraxispilot matches 25 at @n[type=minecraft:marker,tag=ogvz.marker.pilot_down] run particle minecraft:explosion ~ ~1 ~ 0.5 0.50 .5 0 4 force

execute unless score &ogvz temp.custom_death_animation.abraxispilot matches 25.. run schedule function ogvz:misc/custom_death_effect/abraxispilot 1t replace

execute if score &ogvz temp.custom_death_animation.abraxispilot matches 25.. run kill @e[type=minecraft:marker,tag=ogvz.marker.pilot_down]
execute if score &ogvz temp.custom_death_animation.abraxispilot matches 25.. run scoreboard objectives remove temp.custom_death_animation.abraxispilot
