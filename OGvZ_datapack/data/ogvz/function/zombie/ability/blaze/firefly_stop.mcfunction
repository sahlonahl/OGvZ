#> Description: Stops the fireflying.

# Set the flight duration to 0.
scoreboard players set @s ogvz.blaze.firefly.duration.ticks 0

# Remove the gravity attribute modifier.
attribute @s minecraft:gravity modifier remove minecraft:ogvz.blaze.firefly.gravity

# Remove the invisibility and resistance effects.
effect clear @s minecraft:invisibility
effect clear @s minecraft:resistance

# Give short slow falling effect.
effect give @s minecraft:slow_falling 1 0 true

# Make armor visible again.
item modify entity @s armor.head ogvz:set_empty_item_model_head
item modify entity @s armor.chest ogvz:set_leather_item_model_chest
item modify entity @s armor.legs ogvz:set_leather_item_model_legs
item modify entity @s armor.feet ogvz:set_leather_item_model_feet
