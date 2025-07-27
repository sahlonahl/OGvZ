#> Description: Applies a buff to the player in sight.

# Give the player a temporary tag if they are a dwarf and are not on buff cooldown.
tag @p[tag=ogvz.dwarf,scores={ogvz.dwarf.oceans_pearl_buff.cooldown.seconds=0},distance=..16] add temp.target

# Return if no elegible player was found.
execute unless entity @a[tag=temp.target] run return 0

# Summon two markers at the ocean's pearl and give them a tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Face the markers towards the targeted player.
execute facing entity @p[tag=temp.target] eyes run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute facing entity @p[tag=temp.target] eyes run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Determine the hitbox size of the targeted player depending on their eye height.
# Standing player eye height: 1.62
# Sneaking player eye height: 1.27
# Crawling/Swimming/Flying player eye height: 0.4
execute as @p[tag=temp.target] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=1.45..] run tag @s add temp.big_hitbox
execute as @p[tag=temp.target] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=0.84..1.45] run tag @s add temp.medium_hitbox
execute as @p[tag=temp.target] at @s anchored eyes positioned ^ ^ ^ if entity @s[distance=..0.84] run tag @s add temp.small_hitbox

# Start the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_buff_loop

# Give effects to the player if they were hit by the ray.
effect give @p[tag=temp.target,tag=temp.hit] minecraft:conduit_power 9 0
effect give @p[tag=temp.target,tag=temp.hit] minecraft:dolphins_grace 9 0
effect give @p[tag=temp.target,tag=temp.hit] minecraft:regeneration 9 0
effect give @p[tag=temp.target,tag=temp.hit] minecraft:resistance 9 0

# Add buff cooldown to the player no matter if they were hit or not.
scoreboard players set @p[tag=temp.target] ogvz.dwarf.oceans_pearl_buff.cooldown.seconds 8

# Play a sound to the targeted player if they have been hit.
execute as @p[tag=temp.target,tag=temp.hit] at @s run playsound minecraft:block.conduit.ambient.short player @s ~ ~ ~ 1 2 1

# Remove temporary tags.
tag @a remove temp.target
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox

# Remove temporary markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]
