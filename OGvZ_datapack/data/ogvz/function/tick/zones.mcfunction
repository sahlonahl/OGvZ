#> Description: Handles what happens to players when they enter shrine zone or zombie spawn zone.
#> Note: Also handles dwarves taking damage when shrine is destroyed.

# Damage the dwarf if the shrine is gone.
execute as @s[tag=ogvz.dwarf] unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run damage @s 4 ogvz:shrine_destroyed

# Damage the dwarf if they are too far from shrine.
execute as @s[tag=ogvz.dwarf] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:128}}}} run damage @s 4 ogvz:outside_shrine_range

# Damage the dwarf if they are too close to zombie spawn.
execute as @s[tag=ogvz.dwarf] at @e[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run damage @s 4 ogvz:inside_zombie_spawn_range

# Toggle adventure mode for zombies near zombie spawn.
execute as @s[tag=ogvz.zombie,tag=!ogvz.adventure.zombie_spawn] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:16}}}} run tag @s add ogvz.adventure.zombie_spawn
execute as @s[tag=ogvz.zombie,tag=ogvz.adventure.zombie_spawn] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:16}}}} run tag @s remove ogvz.adventure.zombie_spawn

# Give/Remove obsidian skull to/from zombies near zombie spawn.
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.zombie.obsidian_skull] if score &ogvz ogvz.game.zombie_spawn_count matches 2.. at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:16}}}} at @s run function ogvz:give/other/obsidian_skull
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.zombie.obsidian_skull] if score &ogvz ogvz.game.zombie_spawn_count matches 2.. at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:16}}}} run tag @s add ogvz.zombie.obsidian_skull
execute as @s[tag=ogvz.zombie.class,tag=ogvz.zombie.obsidian_skull] if score &ogvz ogvz.game.zombie_spawn_count matches 2.. at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run clear @s minecraft:carrot_on_a_stick[minecraft:custom_data~{active_id:9002}]
execute as @s[tag=ogvz.zombie.class,tag=ogvz.zombie.obsidian_skull] if score &ogvz ogvz.game.zombie_spawn_count matches 2.. at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run tag @s remove ogvz.zombie.obsidian_skull
