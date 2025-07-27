#> Description: Shoot a beam that deals electric type damage.

# Display a fail message and return if the item is on a cooldown.
execute if entity @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Elder Guardian Eye]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds=1..}] run return 0

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=15..] run title @s actionbar [ \
  "", \
  {text:"[Elder Guardian Eye]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"15 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=15..] run return 0

# Remove 10 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 15

# Set the cooldown.
scoreboard players set @s ogvz.dwarven_guard.elder_guardian_eye.cooldown.seconds 5

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Elder Guardian Eye]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 1 2

# As the player is the one shooting the ray, the ray origin is the player.
tag @s add temp.ray_origin

# Create the scoreboard used for spinning particles.
scoreboard objectives add temp.spin dummy
scoreboard players set @s temp.spin 0

# Summons a marker at players feet and gives it the ray tag.
execute summon minecraft:marker run tag @s add temp.ray

# Teleports the marker to the player's eyes and makes it face in the same direction.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~

# Starts the ray casting loop. Different function is called depending on if the user is submerged in water.
execute if entity @s[predicate=ogvz:is_inside_water] as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/hero/dwarven_guard/elder_guardian_eye_long_loop
execute unless entity @s[predicate=ogvz:is_inside_water] as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/hero/dwarven_guard/elder_guardian_eye_short_loop

# Deals damage to all players who have been hit by the ray. Damage is increased if the user is submerged in water.
execute if entity @s[predicate=ogvz:is_inside_water] as @a[tag=temp.hit,tag=zombies] run damage @s 24 ogvz:electric by @p[tag=temp.ray_origin]
execute unless entity @s[predicate=ogvz:is_inside_water] as @a[tag=temp.hit,tag=zombies] run damage @s 16 ogvz:electric by @p[tag=temp.ray_origin]
execute if entity @s[predicate=ogvz:is_inside_water] as @a[tag=temp.hit,tag=dwarves] run damage @s 6 ogvz:electric by @p[tag=temp.ray_origin]
execute unless entity @s[predicate=ogvz:is_inside_water] as @a[tag=temp.hit,tag=dwarves] run damage @s 4 ogvz:electric by @p[tag=temp.ray_origin]

# Gets rid of the ray.
kill @e[type=minecraft:marker,tag=temp.ray]

# Remove scoreboard
scoreboard objectives remove temp.spin

# Remove tags
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox
