#> Description: Shoot a beam that deals electric damage to targeted player.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.guardian.beam.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Beam]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.guardian.beam.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.guardian.beam.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.guardian.beam.cooldown.seconds 3

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Beam]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# Tag the player as the ray origin.
tag @s add temp.ray_origin

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/skeleton_variant/guardian/beam_loop

# Deals damage to all players who have been hit by the ray. Damage is reduced for zombies.
execute as @a[tag=temp.hit,tag=ogvz.dwarf] run damage @s 5 ogvz:electric by @p[tag=temp.ray_origin]
execute as @a[tag=temp.hit,tag=ogvz.zombie] run damage @s 1.125 ogvz:electric by @p[tag=temp.ray_origin]

# Play a ding sound if a player was hit.
execute if entity @a[tag=temp.hit,tag=!ogvz.zombie.element.electric] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1 1

# Gets rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]

# Remove tags
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox
