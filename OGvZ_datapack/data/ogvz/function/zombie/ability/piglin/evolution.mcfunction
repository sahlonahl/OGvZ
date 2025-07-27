#> Description: Add experience towards evolution.

# Reset golden pickaxe uses scoreboard.
scoreboard players set @s ogvz.piglin.used.golden_pickaxe 0

# Play a munching sound.
execute as @s at @s run function ogvz:zombie/ability/piglin/evolution_munch

# Return if the player doesn't have the evolution passive item.
execute as @s[scores={ogvz.inventory.evolution=0}] run return 0

# Increment evolution progress, if the player is close enough to the shrine.
execute at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:112}}}} run scoreboard players add @s ogvz.piglin.evolution.progress 1

# Evolve the player if they have gained enough experience.
execute as @s[scores={ogvz.piglin.evolution.progress=100..}] at @s run function ogvz:zombie/ability/piglin/evolution_evolve
