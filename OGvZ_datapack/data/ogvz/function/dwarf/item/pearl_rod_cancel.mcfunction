#> Description: Cancels the pearl rod teleportation.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/player_hurt_while_teleporting_pearl_rod

# Display a cancel message.
title @s actionbar [ \
  "", \
  {text:"[Pearl Rod]",bold:true,color:"light_purple"}, \
  {text:" Canceled!",color:"light_purple"} \
]

# Stop the activation sound.
stopsound @a player minecraft:block.portal.trigger

# Play a deactivation sound.
playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1

# Remove the teleportation tag from the player.
tag @s remove ogvz.mana.teleporting

# Set the warmup scoreboards to 0.
scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.seconds 0
scoreboard players set @s ogvz.dwarf.pearl_rod.warmup.ticks 0

# Remove the immobilization attributes from the player.
attribute @s minecraft:movement_speed modifier remove ogvz.pearl_rod.teleporting.movement_speed
attribute @s minecraft:jump_strength modifier remove ogvz.pearl_rod.teleporting.jump_strength

# Clear the nausea effect.
effect clear @s minecraft:nausea
