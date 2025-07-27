#> Description: Measures the horizontal distance from shrine and displays the number in the actionbar.

# Return if there is no shrine or the shrine is too far away.
execute unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run return 0
execute as @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:1000}}}} run return 0

# Create temporary tag and scoreboard.
tag @s add temp.ray_origin
scoreboard objectives add temp.shrine_distance dummy
scoreboard players set @s temp.shrine_distance 0

# Create a ray marker.
execute summon minecraft:marker run tag @s add temp.ray

# Rotate the ray marker so it faces the shrine.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s facing entity @n[type=minecraft:marker,tag=ogvz.marker.shrine] feet run tp @s ~ ~ ~ ~ 0

# Measure the distance between the player and the shrine.
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:512}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 512
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:512}}}} at @s run tp @s ^ ^ ^512
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:256}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 256
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:256}}}} at @s run tp @s ^ ^ ^256
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:128}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 128
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:128}}}} at @s run tp @s ^ ^ ^128
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:64}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 64
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:64}}}} at @s run tp @s ^ ^ ^64
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:32}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 32
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:32}}}} at @s run tp @s ^ ^ ^32
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:16}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 16
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:16}}}} at @s run tp @s ^ ^ ^16
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:8}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 8
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:8}}}} at @s run tp @s ^ ^ ^8
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:4}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 4
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:4}}}} at @s run tp @s ^ ^ ^4
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:2}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 2
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:2}}}} at @s run tp @s ^ ^ ^2
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:1}}}} at @s run scoreboard players add @p[tag=temp.ray_origin] temp.shrine_distance 1
execute as @n[type=minecraft:marker,tag=temp.ray] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{min:1}}}} at @s run tp @s ^ ^ ^1

# Kill the ray marker.
kill @n[type=minecraft:marker,tag=temp.ray]

# Display how far the shrine is. Red is too close, green is perfect, yellow is too far.
title @s[scores={temp.shrine_distance=..127}] actionbar ["",{"score":{"name":"@s","objective":"temp.shrine_distance"},color:"red",bold:true}]
title @s[scores={temp.shrine_distance=128..160}] actionbar ["",{"score":{"name":"@s","objective":"temp.shrine_distance"},color:"green",bold:true}]
title @s[scores={temp.shrine_distance=161..}] actionbar ["",{"score":{"name":"@s","objective":"temp.shrine_distance"},color:"yellow",bold:true}]

# Remove temporary tag and scoreboard.
tag @s remove temp.ray_origin
scoreboard objectives remove temp.shrine_distance
