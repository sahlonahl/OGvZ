#> Description: Check if the dragon warrior has been damaged enough to lose thier dragon from.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/dragon_warrior_take_damage_while_in_dragon_form

# Remove the dragon form if the player was damaged enough.
execute as @s[scores={ogvz.dragon_warrior.dragon_scale.damage=300..}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_remove

# Show the dragon scale custom bar.
execute as @s at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_custom_bar
