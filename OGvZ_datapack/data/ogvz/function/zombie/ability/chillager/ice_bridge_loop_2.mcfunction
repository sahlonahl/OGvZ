#> Description: Loop for applying an increasing lifetime scoreboard to all ice markers.

# Exit the loop if there are no ice markers left.
execute unless entity @e[type=minecraft:marker,tag=temp.ice] run return 0

# Set the ice marker's melt scoreboard to the base ice melt value.
scoreboard players operation @n[type=minecraft:marker,tag=temp.ice] ogvz.chillager.ice_bridge.ice_melt.ticks = @s temp.ice_melt_base.ticks

# Remove the temporary tag off the ice marker.
tag @n[type=minecraft:marker,tag=temp.ice] remove temp.ice

# Increment the base ice melt value.
scoreboard players add @s temp.ice_melt_base.ticks 2

# Repeat the loop.
execute as @s at @s run function ogvz:zombie/ability/chillager/ice_bridge_loop_2
