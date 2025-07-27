#> Description: Nerfs the depth strider + dolphin's grace combo.

# Determine if the player has to be nerfed (hasn't been nerfed yet, but has dolphin's grace) or has to be un-nerfed (has been nerfed, but no longer has dolphin's grace).
tag @s[tag=!ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency,predicate=ogvz:effect/dolphins_grace] add temp.nerf
tag @s[tag=ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency,predicate=!ogvz:effect/dolphins_grace] add temp.unnerf

# Return if nothing has to be done with the player.
execute as @s[tag=!temp.nerf,tag=!temp.unnerf] run return 0

# Nerf the player by multiplying their water movement efficiency by x0.
tag @s[tag=temp.nerf] add ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s[tag=temp.nerf] minecraft:water_movement_efficiency modifier add ogvz.dolphins_grace_nerf.water_movement_efficiency -1 add_multiplied_total

# Un-nerf the player.
tag @s[tag=temp.unnerf] remove ogvz.attribute.dolphins_grace_nerf.water_movement_efficiency
attribute @s[tag=temp.unnerf] minecraft:water_movement_efficiency modifier remove ogvz.dolphins_grace_nerf.water_movement_efficiency

# Remove temporary tags.
tag @s remove temp.nerf
tag @s remove temp.unnerf
