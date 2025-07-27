#> Description: Summons a pack of wolves.

# Add temporary tag.
tag @s add temp.target

# Remove the item.
item replace entity @s[gamemode=!creative,tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[gamemode=!creative,tag=temp.use.offhand] weapon.offhand with minecraft:air

# Play an activation sound.
playsound minecraft:entity.wolf.ambient player @a ~ ~ ~ 1 0.7

# Summon 4 wolves with temporary tags.
execute summon minecraft:wolf run tag @s add temp.summon
execute summon minecraft:wolf run tag @s add temp.summon
execute summon minecraft:wolf run tag @s add temp.summon
execute summon minecraft:wolf run tag @s add temp.summon

# Set the owner.
execute as @e[type=minecraft:wolf,tag=temp.summon] run data modify entity @s Owner set from entity @p[tag=temp.target] UUID

# Modify the maximum health.
execute as @e[type=minecraft:wolf,tag=temp.summon] run attribute @s minecraft:max_health base set 20

# Fully heal the wolves.
effect give @e[type=minecraft:wolf,tag=temp.summon] minecraft:instant_health 1 5 true

# Sets the wolf collar color to white so they look like wild wolves instead of dogs.
execute as @e[type=minecraft:wolf,tag=temp.summon] run data modify entity @s CollarColor set value 0b

# Sets the AI Wolf breeding cooldown to maximum possible, to prevent breeding.
execute as @e[type=minecraft:wolf,tag=temp.summon] run data modify entity @s Age set value 2147483647

# Remove temporary tags.
tag @s remove temp.target
tag @e[type=minecraft:wolf] remove temp.summon
