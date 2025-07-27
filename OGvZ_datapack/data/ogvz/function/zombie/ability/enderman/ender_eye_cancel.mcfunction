#> Description: Cancel teleporting to the ender portal.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/player_hurt_while_teleporting_ender_eye

# Display a cancel message.
title @s actionbar [ \
  "", \
  {text:"[Ender Eye]",bold:true,color:"light_purple"}, \
  {text:" Canceled!",color:"light_purple"} \
]

# Stop the warmup sound.
stopsound @a player minecraft:block.portal.trigger

# Play a cancel sound.
playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1

# Remove the teleporting tag from the player.
tag @s remove ogvz.zombie.teleporting

# Clear the warmup timer scoreboards.
scoreboard players set @s ogvz.zombie.ender_eye.warmup.seconds 0
scoreboard players set @s ogvz.zombie.ender_eye.warmup.ticks 0

# Remove the immobilization attributes.
attribute @s minecraft:movement_speed modifier remove ogvz.ender_eye.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.ender_eye.teleporting.jump_strength

# Remove the nause effect.
effect clear @s minecraft:nausea
