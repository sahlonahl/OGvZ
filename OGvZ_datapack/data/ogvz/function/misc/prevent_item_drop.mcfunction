#> Description: Returns undroppable items back to the player that threw them.

# Set the Owner nbt to the Thrower nbt, so it can be only picked up by the player that threw the item.
data modify entity @s Owner set from entity @s Thrower

# Set the PickupDelay nbt to 0, so it can be picked up as soon as possible.
data modify entity @s PickupDelay set value 0s

# Message the player about being unable to drop the item.
execute on origin run title @s actionbar {text:"You cannot drop this item!",color:"red"}

# Tag the player that threw the item with the temporary origin tag.
execute on origin run tag @s add temp.origin

# Teleport the item to the orgin player's eyes.
execute at @p[tag=temp.origin] anchored eyes positioned ^ ^ ^ run tp @s ~ ~ ~

# Remove the temporary tag.
tag @a remove temp.origin
