#> Description: Teleport the player to another zombie spawn.

### Depending on the closest zombie spawn, teleport the player to the next in order zombie spawn that exists. (Alpha -> Beta -> Gamma -> Delta -> Alpha)
# Alpha -> Beta
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] run tag @s add temp.teleported
# Alpha -> Gamma
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] run tag @s add temp.teleported
# Alpha -> Delta
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] run tag @s add temp.teleported

# Beta -> Gamma
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] run tag @s add temp.teleported
# Beta -> Delta
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] run tag @s add temp.teleported
# Beta -> Alpha
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] run tag @s add temp.teleported

# Gamma -> Delta
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta] run tag @s add temp.teleported
# Gamma -> Alpha
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] run tag @s add temp.teleported
# Gamma -> Beta
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] run tag @s add temp.teleported

# Delta -> Alpha
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.alpha] run tag @s add temp.teleported
# Delta -> Beta
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.beta] run tag @s add temp.teleported
# Delta -> Gamma
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] run tp @s ~ ~ ~
execute as @s[tag=!temp.teleported] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.delta,distance=..0.1] if entity @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn.gamma] run tag @s add temp.teleported

# Display an activation message.
title @s[tag=temp.teleported] actionbar [ \
  "", \
  {text:"[Obsidian Skull]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a sound and particle at the player's new position
execute at @s[tag=temp.teleported] run playsound minecraft:block.ender_chest.open player @s ~ ~ ~ 1 1 1
execute at @s[tag=temp.teleported] run particle minecraft:end_rod ~0 ~1 ~0 0.25 0.5 0.25 0.01 20 force @s

# Remove the temporary tag.
tag @s remove temp.teleported
