#> Description: Handles silverfish lifetime and prevents it from targeting zombie players.

# Decrement lifetime scoreboard.
scoreboard players remove @s ogvz.silverfish.lifetime.ticks 1

# Kill the silverfish if lifetime scoreboard reached 0.
kill @s[scores={ogvz.silverfish.lifetime.ticks=..0}]

# Add a temporary tag to silverfish.
tag @s add temp.origin

# Remove the tempt range and follow range attributes, so the silverfish can target player's again.
attribute @s minecraft:tempt_range modifier remove ogvz.silverfish_friendly.tempt_range
attribute @s minecraft:follow_range modifier remove ogvz.silverfish_friendly.follow_range

# Add a x0 multiplier to tempt range, follow range and attack damage if the silverfish is targeting a non-dwarf player.
execute on target as @s[tag=!ogvz.dwarf] run attribute @n[type=minecraft:silverfish,tag=temp.origin] minecraft:tempt_range modifier add ogvz.silverfish_friendly.tempt_range -1 add_multiplied_total
execute on target as @s[tag=!ogvz.dwarf] run attribute @n[type=minecraft:silverfish,tag=temp.origin] minecraft:follow_range modifier add ogvz.silverfish_friendly.follow_range -1 add_multiplied_total
execute on target as @s[tag=!ogvz.dwarf] run attribute @n[type=minecraft:silverfish,tag=temp.origin] minecraft:attack_damage modifier add ogvz.silverfish_friendly.attack_damage -1 add_multiplied_total

# Remove the attack damage multiplier if the silverfish is targeting a dwarf.
execute on target as @s[tag=ogvz.dwarf] run attribute @n[type=minecraft:silverfish,tag=temp.origin] minecraft:attack_damage modifier remove ogvz.silverfish_friendly.attack_damage

# Remove temporary tags.
tag @s remove temp.origin
