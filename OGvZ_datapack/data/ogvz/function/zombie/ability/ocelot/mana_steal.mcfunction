#> Description: Shoot a ray that steals mana from a player.

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.ocelot.mana_steal.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Mana Steal]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.ocelot.mana_steal.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.ocelot.mana_steal.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.ocelot.mana_steal.cooldown.seconds 10

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Mana Steal]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation sound.
playsound minecraft:entity.cat.stray_ambient player @a ~ ~ ~ 1 1

# Tag the player as the ray origin.
tag @s add temp.ray_origin

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/ocelot/mana_steal_loop

# Create a temporary scoreboard to save the targeted player's current mana
scoreboard objectives add temp.mana dummy
execute store result score @s temp.mana run experience query @p[tag=temp.hit,tag=ogvz.mana] levels
# create other temporary scoreboards to perform math later
scoreboard objectives add temp.const.30 dummy
scoreboard objectives add temp.const.100 dummy
scoreboard players set @s temp.const.30 30
scoreboard players set @s temp.const.100 100
# modify temp.mana to get 30% of the targeted player's mana
scoreboard players operation @s[scores={temp.mana=1..}] temp.mana *= @s temp.const.30
scoreboard players operation @s[scores={temp.mana=1..}] temp.mana /= @s temp.const.100

# old mana math function
#scoreboard players set @s[scores={temp.mana=30..}] temp.mana 30

# Play a sound and display a messege to the player who got their mana stolen, if any of it got stolen.
execute as @s[scores={temp.mana=1..}] as @p[tag=temp.hit,tag=ogvz.mana] at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 1 1
execute as @s[scores={temp.mana=1..}] run title @p[tag=temp.hit,tag=ogvz.mana] actionbar [ \
  "", \
  {text:"Your mana has been drained by an Ocelot!",color:"red"} \
]

# (new mana steal commands) Remove 30% of mana from the targeted dwarf and transfer it to the ocelot
execute as @s[scores={temp.mana=1..}] run scoreboard players operation @p[tag=temp.hit,tag=ogvz.mana] ogvz.dwarf.mana_buildup.mana -= @s temp.mana
execute as @s[scores={temp.mana=1..}] run scoreboard players operation @s ogvz.dwarf.mana_buildup.mana += @s temp.mana

# (old mana steal commands) Remove up to 30 mana from the targeted player (if they can have mana). Transfer all the removed mana onto the ocelot.
#execute as @s[scores={temp.mana=16..}] run scoreboard players add @s ogvz.dwarf.mana_buildup.mana 16
#execute as @s[scores={temp.mana=16..}] run scoreboard players remove @p[tag=temp.hit,tag=ogvz.mana] ogvz.dwarf.mana_buildup.mana 16
#execute as @s[scores={temp.mana=16..}] run scoreboard players remove @s temp.mana 16
#execute as @s[scores={temp.mana=8..}] run scoreboard players add @s ogvz.dwarf.mana_buildup.mana 8
#execute as @s[scores={temp.mana=8..}] run scoreboard players remove @p[tag=temp.hit,tag=ogvz.mana] ogvz.dwarf.mana_buildup.mana 8
#execute as @s[scores={temp.mana=8..}] run scoreboard players remove @s temp.mana 8
#execute as @s[scores={temp.mana=4..}] run scoreboard players add @s ogvz.dwarf.mana_buildup.mana 4
#execute as @s[scores={temp.mana=4..}] run scoreboard players remove @p[tag=temp.hit,tag=ogvz.mana] ogvz.dwarf.mana_buildup.mana 4
#execute as @s[scores={temp.mana=4..}] run scoreboard players remove @s temp.mana 4
#execute as @s[scores={temp.mana=2..}] run scoreboard players add @s ogvz.dwarf.mana_buildup.mana 2
#execute as @s[scores={temp.mana=2..}] run scoreboard players remove @p[tag=temp.hit,tag=ogvz.mana] ogvz.dwarf.mana_buildup.mana 2
#execute as @s[scores={temp.mana=2..}] run scoreboard players remove @s temp.mana 2
#execute as @s[scores={temp.mana=1..}] run scoreboard players add @s ogvz.dwarf.mana_buildup.mana 1
#execute as @s[scores={temp.mana=1..}] run scoreboard players remove @p[tag=temp.hit,tag=ogvz.mana] ogvz.dwarf.mana_buildup.mana 1
#execute as @s[scores={temp.mana=1..}] run scoreboard players remove @s temp.mana 1

# Play a ding sound for the beam shooter if another player was hit.
execute if entity @e[tag=temp.hit] run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1 1

# Gets rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]

# Remove tags
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox

# Remove temporary scoreboards.
scoreboard objectives remove temp.mana
scoreboard objectives remove temp.const.30
scoreboard objectives remove temp.const.100
