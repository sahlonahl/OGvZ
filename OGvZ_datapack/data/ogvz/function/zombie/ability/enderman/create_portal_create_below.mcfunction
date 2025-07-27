#> Description: Create the ender portal below.

# Perform a check to see if the player still meets the conditions to place a portal.
function ogvz:zombie/ability/enderman/create_portal_check_below

# Remove the ender portal creating tags from the player.
tag @s remove ogvz.zombie.class.enderman.creating_portal
tag @s remove ogvz.zombie.class.enderman.creating_portal.below

# Remove the attributes if the check failed.
attribute @s[tag=temp.fail] minecraft:movement_speed modifier remove ogvz.enderman.create_portal.movement_speed
attribute @s[tag=temp.fail] minecraft:jump_strength modifier remove ogvz.enderman.create_portal.jump_strength

# Play the cancel sound if the check failed.
playsound minecraft:block.respawn_anchor.deplete player @s[tag=temp.fail] ~ ~ ~ 1 1

# Return if the check failed.
execute as @s[tag=temp.fail] run return run tag @s remove temp.fail

# Display a success message.
title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" Creating portal!",color:"light_purple"} \
]

# Clear all active items from the player.
clear @s minecraft:carrot_on_a_stick

# Reset the cooldown scoreboards to prevent the "Recharged!" messages from showing up during the cutscene.
scoreboard players set @s ogvz.enderman.teleport.cooldown.seconds 0
scoreboard players set @s ogvz.enderman.create_portal.cooldown.seconds 0

# Remove the punish tag.
tag @s remove ogvz.zombie.punish

# Teleport the player to the center of the block above.
execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~4 ~

# Tag the player for death.
tag @s add ogvz.zombie.class.enderman.kill

# Keep the chunk loaded.
forceload add ~ ~

# Make the player invulnerable.
effect give @s minecraft:resistance infinite 4 true

# Create a portal marker.
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ogvz.marker.ender_portal","ogvz.marker.ender_portal.animation","ogvz.kill_on_reload"]}

# Set the cutscene scoreboard to 0.
scoreboard players set @n[type=minecraft:marker,tag=ogvz.marker.ender_portal.animation] ogvz.marker.ender_portal.animation.ticks 0
