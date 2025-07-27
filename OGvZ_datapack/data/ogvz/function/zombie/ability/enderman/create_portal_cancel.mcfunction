#> Description: Cancel opening the ender portal.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/player_hurt_while_creating_portal

# Display a cancel message.
title @s actionbar [ \
  "", \
  {text:"[Create Portal]",bold:true,color:"light_purple"}, \
  {text:" Canceled!",color:"light_purple"} \
]

# Stop the warmup sound.
stopsound @a player minecraft:block.portal.trigger

# Play the cancel sound.
playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1

# Remove the portal creation tags from the player.
tag @s remove ogvz.zombie.class.enderman.creating_portal
tag @s remove ogvz.zombie.class.enderman.creating_portal.above
tag @s remove ogvz.zombie.class.enderman.creating_portal.below

# Clear the warmup timer scoreboards.
scoreboard players set @s ogvz.enderman.create_portal.warmup.seconds 0
scoreboard players set @s ogvz.enderman.create_portal.warmup.ticks 0

# Remove the immobilization attributes.
attribute @s minecraft:movement_speed modifier remove ogvz.enderman.create_portal.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.enderman.create_portal.jump_strength
