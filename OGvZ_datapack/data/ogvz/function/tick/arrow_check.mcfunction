#> Description: Checks arrows for things like custom enchantments.

# Add a temporary tag to the arrow.
tag @s add temp.processing

# Run function on arrow if the arrow was shot from a whispersong by a wither warrior with at least one soul charge.
execute on origin as @s[tag=ogvz.dwarf.class.hero.wither_warrior,scores={ogvz.wither_warrior.soul_charges.count=1..}] as @n[type=#minecraft:arrows,tag=temp.processing,nbt={weapon:{components:{"minecraft:enchantments":{"ogvz:soul_power":1}}}}] at @s run function ogvz:dwarf/item/hero/wither_warrior/whispersong_arrow

# Remove the temporary tag from the arrow.
tag @s remove temp.processing

# Tag the arrow as processed.
tag @s add ogvz.arrow.processed
