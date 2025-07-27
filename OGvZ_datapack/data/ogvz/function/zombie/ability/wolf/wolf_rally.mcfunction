#> Description: Give strength effect to your wolves.

# Add a temporary tag.
tag @s add temp.target

# Check all nearby wolves for their owner. If the targeted player is their owner, buff them.
execute as @e[type=minecraft:wolf,distance=..16] at @s run function ogvz:zombie/ability/wolf/wolf_rally_check

# Remove the temporary tag.
tag @s remove temp.target
