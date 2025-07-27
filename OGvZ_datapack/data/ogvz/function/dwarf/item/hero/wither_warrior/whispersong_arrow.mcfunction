#> Description: Apply a tag to a soul charged arrow and removes one soul charge.

# Add a tag to the arrow, that let's it deal extra damage and show particles.
tag @s add temp.charged_whispersong_arrow

# Remove one soul charge from the wither warrior.
execute on origin run scoreboard players remove @s ogvz.wither_warrior.soul_charges.count 1
