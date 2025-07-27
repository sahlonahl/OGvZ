#> Description: Prevents the player from moving when under the effect of bad luck.

# Determine if the player has to be frozen or unfrozen.
tag @s[tag=!ogvz.frozen,predicate=ogvz:effect/unluck] add temp.freeze
tag @s[tag=ogvz.frozen,predicate=!ogvz:effect/unluck] add temp.unfreeze

# Return if nothing has to be done with the player.
execute as @s[tag=!temp.freeze,tag=!temp.unfreeze] run return 0

# Freeze the player.
tag @s[tag=temp.freeze] add ogvz.frozen
tag @s[tag=temp.freeze] add ogvz.attribute.frozen.movement_speed
attribute @s[tag=temp.freeze] minecraft:movement_speed modifier add ogvz.frozen.movement_speed -1 add_multiplied_total
tag @s[tag=temp.freeze] add ogvz.attribute.frozen.jump_strength
attribute @s[tag=temp.freeze] minecraft:jump_strength modifier add ogvz.frozen.jump_strength -1 add_multiplied_total
execute as @s[tag=temp.freeze] run playsound minecraft:entity.player.hurt_freeze player @a ~ ~ ~ 1 0.5

# Unfreeze the player.
tag @s[tag=temp.unfreeze] remove ogvz.frozen
tag @s[tag=temp.unfreeze] remove ogvz.attribute.frozen.movement_speed
attribute @s[tag=temp.unfreeze] minecraft:movement_speed modifier remove ogvz.frozen.movement_speed
tag @s[tag=temp.unfreeze] remove ogvz.attribute.frozen.jump_strength
attribute @s[tag=temp.unfreeze] minecraft:jump_strength modifier remove ogvz.frozen.jump_strength

# Remove temporary tags.
tag @s remove temp.freeze
tag @s remove temp.unfreeze
