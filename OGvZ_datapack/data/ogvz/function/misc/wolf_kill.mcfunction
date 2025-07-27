#> Description: Kills a wolf if it belongs to a dead players.

# Add a temporary tag to the wolf.
tag @s add temp.target

# Kill the wolf if the owner is dead.
execute on owner as @s[tag=ogvz.dead] run kill @e[type=minecraft:wolf,tag=temp.target]

# Remove the temporary tag.
tag @s remove temp.target
