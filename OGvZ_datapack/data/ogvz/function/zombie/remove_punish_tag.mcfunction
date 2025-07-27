#> Description: Removes the punish tag from the player.
#> Comment: Punish tag is used to prevent players from rerolling zombie spawn discs by killing themselves intentionally soon after choosing a class.

# Revoke the advancement so it can be granted again.
advancement revoke @s only ogvz:misc/punish_tagged_zombie_deal_or_take_damage_to_or_from_dwarf

# Remove the punish tag.
tag @s remove ogvz.zombie.punish
