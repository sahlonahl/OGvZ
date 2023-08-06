# -------------------------------------------
# Called By: tick.mcfunction
# File Name: endermite_explode
# File Purpose: explodes endermine
# Created By: Galactic
# 
# Created On: 2023.07.06
# Last Modified On: 2023.08.06
# Last Modified By: Galactic
#
# Credit to: Galactic
#
# Comments: 
# -------------------------------------------

execute as @s[tag=endermine_explode] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 25
execute as @s[tag=endermine_explode] at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 2
execute as @s[tag=endermine_explode] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 100
execute as @s[tag=endermine_explode] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.1
execute as @s[tag=endermine_explode] at @s unless entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:3b,Fuse:0,ignited:1b,CustomName:'{"text":"Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_explode] at @s unless entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:3b,Fuse:2,ignited:1b,CustomName:'{"text":"Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_explode] at @s if entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_explode] at @s if entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:1b,Fuse:2,ignited:1b,CustomName:'{"text":"Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_explode_big] at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 0.1 25
execute as @s[tag=endermine_explode_big] at @s run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0.1 2
execute as @s[tag=endermine_explode_big] at @s run particle minecraft:cloud ~ ~ ~ 1 1 1 0.1 100
execute as @s[tag=endermine_explode_big] at @s run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 2 0.1
execute as @s[tag=endermine_explode_big] at @s unless entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:5b,Fuse:0,ignited:1b,CustomName:'{"text":"Enchanted Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_explode_big] at @s unless entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:5b,Fuse:2,ignited:1b,CustomName:'{"text":"Enchanted Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_explode_big] at @s if entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:1b,Fuse:0,ignited:1b,CustomName:'{"text":"Enchanted Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_explode_big] at @s if entity @e[type=marker,tag=dSpawn,distance=..8] run summon creeper ~ ~ ~ {Invulnerable:1b,Invulnerable:1b,Team:"zMONSTER",ExplosionRadius:1b,Fuse:2,ignited:1b,CustomName:'{"text":"Enchanted Explosive Charge","color":"red","bold":false,"italic":false}'}
execute as @s[tag=endermine_debuff] at @s run particle minecraft:dust 1 0 1 2.5 ~ ~0.9 ~ 2 2 2 0 100
execute as @s[tag=endermine_debuff] at @s run particle minecraft:reverse_portal ~ ~0.9 ~ 0 0 0 1 150
execute as @s[tag=endermine_debuff] at @s run playsound minecraft:block.end_portal_frame.fill master @a ~ ~ ~ 1 0.1
execute as @s[tag=endermine_debuff] at @s run playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1 1
execute as @s[tag=endermine_debuff] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1 0.5
execute as @s[tag=endermine_debuff] at @s run effect give @a[tag=dwarves,distance=..5] blindness 5 0
execute as @s[tag=endermine_debuff] at @s run effect give @a[tag=dwarves,distance=..5] slowness 5 9
execute as @s[tag=endermine_debuff] at @s run effect give @a[tag=dwarves,distance=..5] mining_fatigue 5 4
execute as @s[tag=endermine_debuff] at @s run effect give @a[tag=dwarves,distance=..5] weakness 5 0
execute as @s[tag=endermine_debuff] at @s run effect give @a[tag=dwarves,distance=..5] instant_damage
execute as @s[tag=endermine_summon] at @s run particle minecraft:dragon_breath ~ ~0.9 ~ 1 1 1 0 100
execute as @s[tag=endermine_summon] at @s run particle minecraft:portal ~ ~0.9 ~ 0 0 0 1 250
execute as @s[tag=endermine_summon] at @s run playsound minecraft:block.respawn_anchor.set_spawn master @a ~ ~ ~ 1 1
execute as @s[tag=endermine_summon] at @s run playsound minecraft:item.lodestone_compass.lock master @a ~ ~ ~ 1 1
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_summon] at @s run summon endermite ~ ~0.5 ~ {Invulnerable:1b,Team:"zMONSTER",Health:4f,Lifetime:2000,Attributes:[{Name:generic.max_health,Base:4},{Name:generic.attack_damage,Base:4}]}
execute as @s[tag=endermine_displace] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.2 0.5 0.2 1 100
execute as @s[tag=endermine_displace] at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1
execute as @s[tag=endermine_displace] at @s run effect give @a[tag=dwarves,distance=..5] blindness 3 0
execute as @s[tag=endermine_displace] at @s run tp @a[tag=dwarves,distance=..5] @a[limit=1,sort=random,team=zMONSTER,tag=!endermite,distance=..12]
kill @s