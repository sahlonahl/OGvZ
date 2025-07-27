#> Description: Boost the player high into the air.

# Return if the player is not on ground.
execute unless predicate ogvz:is_on_ground run return 0

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.golem.leap.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Leap]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.golem.leap.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.golem.leap.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.golem.leap.cooldown.seconds 20

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Leap]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play a leap sound and show particles.
playsound minecraft:entity.iron_golem.repair player @a ~ ~ ~ 8 0.5
particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.25 0 0.25 0.1 30

# Store the player's gamemode as a tag.
execute as @s[gamemode=creative] run tag @s add temp.gamemode.creative
execute as @s[gamemode=survival] run tag @s add temp.gamemode.survival
execute as @s[gamemode=adventure] run tag @s add temp.gamemode.adventure
execute as @s[gamemode=spectator] run tag @s add temp.gamemode.spectator

# Set the player's gamemode to creative, which has immunity to explosion damage.
gamemode creative

# Disable any knockback resistance the player has by multiplying it with 0.
attribute @s minecraft:explosion_knockback_resistance modifier add ogvz:temp.remove.explosion_knockback_resistance -1 add_multiplied_total

# Teleport the player 10000 blocks into the air, where the soon to be summon explosion cannot be heard or affect anything.
tp @s ~ ~10000 ~

# Summon 2 explosions by summoning 2 end crystals and damaging them.
execute at @s positioned ~ ~ ~ summon minecraft:end_crystal run damage @s 0
execute at @s positioned ~ ~-9 ~ summon minecraft:end_crystal run damage @s 0

# Teleport the player back to where they've been.
tp @s ~ ~ ~

# Remove the attribute that disables knockback resistance.
attribute @s minecraft:explosion_knockback_resistance modifier remove ogvz:temp.remove.explosion_knockback_resistance

# Restore the player's gamemode.
execute as @s[tag=temp.gamemode.creative] run gamemode creative @s
execute as @s[tag=temp.gamemode.survival] run gamemode survival @s
execute as @s[tag=temp.gamemode.adventure] run gamemode adventure @s
execute as @s[tag=temp.gamemode.spectator] run gamemode spectator @s

# Remove all temporary tags.
tag @s remove temp.gamemode.creative
tag @s remove temp.gamemode.survival
tag @s remove temp.gamemode.adventure
tag @s remove temp.gamemode.spectator
