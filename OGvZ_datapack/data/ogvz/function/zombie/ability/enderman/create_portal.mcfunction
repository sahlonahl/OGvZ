#> Description: Starts the create portal warmup.

# If the player is already creating the portal, cancel the action.
execute as @s[tag=ogvz.zombie.class.enderman.creating_portal] at @s run return run function ogvz:zombie/ability/enderman/create_portal_cancel

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.enderman.create_portal.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.enderman.create_portal.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.enderman.create_portal.cooldown.seconds=1..}] run return 0

# Terrain modifying abilities cannot be used when the player is in adventure mode.
execute if entity @s[gamemode=adventure] run title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"red"}, \
  {text:" You cannnot use this ability right now!",color:"red"} \
]
execute if entity @s[gamemode=adventure] run return 0

# Perform a check depending on if the player is sneaking or not. Return if the check fails.
execute as @s[predicate=!ogvz:input_sneak_pressed] at @s run function ogvz:zombie/ability/enderman/create_portal_check_above
execute as @s[predicate=ogvz:input_sneak_pressed] at @s run function ogvz:zombie/ability/enderman/create_portal_check_below
execute as @s[tag=temp.fail] run return run tag @s remove temp.fail

# Set the cooldown.
scoreboard players set @s ogvz.enderman.create_portal.cooldown.seconds 15

# Dispaly a message for creating the portal above/below depending on if the sneak button is held.
title @s[predicate=!ogvz:input_sneak_pressed] actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" Creating portal ",color:"light_purple"}, \
  {text:"above",color:"light_purple",underlined:true}, \
  {text:"...",color:"light_purple"} \
]
title @s[predicate=ogvz:input_sneak_pressed] actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" Creating portal ",color:"light_purple"}, \
  {text:"below",color:"light_purple",underlined:true}, \
  {text:"...",color:"light_purple"} \
]

# Play a warmup sound.
playsound minecraft:block.portal.trigger player @a ~ ~ ~ 1 0.8

# Give the player the proper portal creating tags.
tag @s add ogvz.zombie.class.enderman.creating_portal
tag @s[predicate=!ogvz:input_sneak_pressed] add ogvz.zombie.class.enderman.creating_portal.above
tag @s[predicate=ogvz:input_sneak_pressed] add ogvz.zombie.class.enderman.creating_portal.below

# Set the warmup.
scoreboard players set @s ogvz.enderman.create_portal.warmup.seconds 5

# Immobilizes the player using attributes.
attribute @s minecraft:movement_speed modifier add ogvz.enderman.create_portal.movement_speed -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.enderman.create_portal.jump_strength -1 add_multiplied_total
