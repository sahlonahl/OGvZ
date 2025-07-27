#> Description: Handles the zombie abilities that apply to certain classes without the need for a passive item.
#> Comment: These abilities don't really matter that much and as such, do not need a passive ability item with a description.

# Husks are immune to hunger.
effect clear @s[tag=ogvz.zombie.class.zombie_variant.husk] minecraft:hunger

# Wither skeletons are immune to wither effect.
effect clear @s[tag=ogvz.zombie.class.skeleton_variant.wither_skeleton] minecraft:wither

# Spiders are immune to poison effect.
effect clear @s[tag=ogvz.zombie.class.spider] minecraft:poison

# Silverfish have permanent infested.
effect give @s[tag=ogvz.zombie.class.silverfish] minecraft:infested infinite 0 true

# Aquatic zombies have permanent dolphin's grace.
effect give @s[tag=ogvz.zombie.aquatic] minecraft:dolphins_grace infinite 0 true

# Ice element zombies are immune to frozen (bad luck) effect.
effect clear @s[tag=ogvz.zombie.element.ice] minecraft:unluck
