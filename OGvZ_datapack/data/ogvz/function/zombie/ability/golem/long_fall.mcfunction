#> Description: Creates paricles and plays a sound when the golem lands after a long fall.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/golem_long_fall

# Play a sound and show particles.
playsound minecraft:entity.iron_golem.damage player @a ~ ~ ~ 8 0.5
particle minecraft:dust_pillar{block_state:"minecraft:stone"} ~ ~ ~ 1.5 0 1.5 0.1 50
