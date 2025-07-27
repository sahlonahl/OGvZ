#> Description: Cut through enemies in front of the player and debuffs them.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Phantom Slash]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.wither_warrior.phantom_slash.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.wither_warrior.phantom_slash.cooldown.seconds=1..}] run return 0

# Display a fail message and return if the player doesn't have enough mana.
execute unless entity @s[level=15..] run title @s actionbar [ \
  "", \
  {text:"[Phantom Slash]",bold:true,color:"red"}, \
  {text:" You need at least ",color:"red"}, \
  {text:"30 mana",bold:true,color:"red"}, \
  {text:"!",color:"red"} \
]
execute unless entity @s[level=30..] run return 0

# Remove 15 mana (levels) from the player.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 30

# Set the cooldown.
scoreboard players set @s ogvz.wither_warrior.phantom_slash.cooldown.seconds 15

# Play an activation sound.
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 2 0.5

# Give the player a temporary tag.
tag @s add temp.ray_caster

# Summon two markers at the players feet and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/hero/wither_warrior/phantom_slash_loop

# Teleport the ray backwards a bit.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run tp @s ^ ^ ^-0.1

# Teleport the player to the ray.
execute at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~-1.0 ~ #ogvz:go_through if block ~ ~-1.6 ~ #ogvz:go_through positioned ~ ~-1.6 ~ align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute at @n[type=minecraft:marker,tag=temp.ray] if block ~ ~-1.0 ~ #ogvz:go_through unless block ~ ~-1.6 ~ #ogvz:go_through positioned ~ ~-1.0 ~ align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute at @n[type=minecraft:marker,tag=temp.ray] unless block ~ ~-1.0 ~ #ogvz:go_through positioned ~ ~ ~ align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~

# Deals damage to all players who have been hit by the ray.
execute as @a[tag=temp.hit,tag=ogvz.zombie] run damage @s 15 minecraft:player_attack by @p[tag=temp.ray_caster]
execute as @a[tag=temp.hit,tag=ogvz.dwarf] run damage @s 3.75 minecraft:player_attack by @p[tag=temp.ray_caster]

# Apply effects to all zombies hit.
effect give @a[tag=ogvz.zombie,tag=temp.hit] minecraft:blindness 8 0
effect give @a[tag=ogvz.zombie,tag=temp.hit] minecraft:slowness 8 0
effect give @a[tag=ogvz.zombie,tag=temp.hit] minecraft:weakness 8 0

# Gets rid of the rays.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]

# Remove tags
tag @s remove temp.ray_caster
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox
