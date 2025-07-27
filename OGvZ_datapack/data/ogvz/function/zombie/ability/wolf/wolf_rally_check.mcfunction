#> Description: Checks if the wolf belongs to the targeted player.

# Add temporary tag.
tag @s add temp.target

# Buff the wolf if it belongs to the targeted player.
execute on owner as @s[tag=temp.target] run effect give @n[type=minecraft:wolf,tag=temp.target] minecraft:strength 2 0

# Remove temporary tag.
tag @s remove temp.target
