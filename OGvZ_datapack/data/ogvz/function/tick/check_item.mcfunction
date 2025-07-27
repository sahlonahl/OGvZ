#> Description: Checks if item entity is allowed to be dropped.

# Add a temporary tag to the item.
tag @s add temp.processing

# Prevent zombie players from dropping items unless the item has droppable custom data. Players in creative mode are ignored.
execute on origin if entity @s[tag=ogvz.zombie,gamemode=!creative] as @n[type=minecraft:item,tag=temp.processing] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{droppable:1}}}}] at @s run function ogvz:misc/prevent_item_drop

# Prevent non-zombie players from dropping items with undroppable custom data. Players in creative mode are ignored.
execute on origin if entity @s[tag=!ogvz.zombie,gamemode=!creative] as @n[type=minecraft:item,tag=temp.processing] if entity @s[nbt={Item:{components:{"minecraft:custom_data":{undroppable:1}}}}] at @s run function ogvz:misc/prevent_item_drop

# Remove the temporary tag from the item.
tag @s remove temp.processing

# Tag the item as processed.
tag @s add ogvz.processed
