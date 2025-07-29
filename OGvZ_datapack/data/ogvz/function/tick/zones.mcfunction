#> Description: Handles what happens to players when they enter shrine zone or zombie spawn zone.
#> Note: Also handles dwarves taking damage when shrine is destroyed (lack of shrine zone).

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

# Give/Remove resistance effect to/from zombies near zombie spawn.
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.zombie.zombie_spawn.resistance] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run effect give @s minecraft:resistance infinite 4 true
execute as @s[tag=ogvz.zombie.class,tag=ogvz.zombie.zombie_spawn.resistance] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run effect clear @s minecraft:resistance
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.zombie.zombie_spawn.resistance] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run tag @s add ogvz.zombie.zombie_spawn.resistance
execute as @s[tag=ogvz.zombie.class,tag=ogvz.zombie.zombie_spawn.resistance] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run tag @s remove ogvz.zombie.zombie_spawn.resistance

# Give/Remove fall damage immunity to/from zombies near zombie spawn.
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.attribute.zombie_spawn.fall_damage_multiplier] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run attribute @s minecraft:fall_damage_multiplier modifier add ogvz:zombie_spawn.fall_damage_multiplier -1 add_multiplied_total
execute as @s[tag=ogvz.zombie.class,tag=ogvz.attribute.zombie_spawn.fall_damage_multiplier] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run attribute @s minecraft:fall_damage_multiplier modifier remove ogvz:zombie_spawn.fall_damage_multiplier
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.attribute.zombie_spawn.fall_damage_multiplier] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run tag @s add ogvz.attribute.zombie_spawn.fall_damage_multiplier
execute as @s[tag=ogvz.zombie.class,tag=ogvz.attribute.zombie_spawn.fall_damage_multiplier] at @n[type=minecraft:marker,tag=ogvz.marker.zombie_spawn] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:32}}}} run tag @s remove ogvz.attribute.zombie_spawn.fall_damage_multiplier

# Give fall damage immunity to zombies near ender portal.
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.attribute.ender_portal.fall_damage_multiplier] if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal,distance=..8] run attribute @s minecraft:fall_damage_multiplier modifier add ogvz:ender_portal.fall_damage_multiplier -1 add_multiplied_total
execute as @s[tag=ogvz.zombie.class,tag=!ogvz.attribute.ender_portal.fall_damage_multiplier] if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal,distance=..8] run tag @s add ogvz.attribute.ender_portal.fall_damage_multiplier
