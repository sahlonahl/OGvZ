#> Description: Handles all custom bars that appear in the actionbar.

# Return if custom bar has been hidden.
execute as @s[scores={ogvz.misc.custom_bar_hide.ticks=1..}] run return 0

# Show dragon scale custom bar to Dragon Warrior if they are holding the dragon scale while in dragon form.
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior.dragon_form] if items entity @s weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:4001}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale_custom_bar

# Show whispersong's custom bar to Wither Warrior if they are holding the whispersong.
execute if items entity @s weapon.* minecraft:bow[enchantments~[{enchantments:"ogvz:soul_power"}]] at @s run function ogvz:dwarf/item/hero/wither_warrior/whispersong_custom_bar

# Show Ocean's Pearl custom bar to the Dwarven Guard if they are holding the ocean's pearl.
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard] if items entity @s weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:4301}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl_custom_bar

# Show Invisibility's custom bar to the Chillager if they are invisible or are still regenerating invisibility.
execute as @s[tag=ogvz.zombie.class.chillager.invisible] at @s run function ogvz:zombie/ability/chillager/invisibility_custom_bar
execute as @s[tag=ogvz.zombie.class.chillager,tag=!ogvz.zombie.class.chillager.invisible,scores={ogvz.chillager.invisibility.duration=..1199}] at @s run function ogvz:zombie/ability/chillager/invisibility_custom_bar

# Show Velocity custom bar to Phantom.
execute as @s[tag=ogvz.zombie.class.phantom] at @s run function ogvz:zombie/ability/phantom/velocity_custom_bar

# Show Snowball Barrage's custom bar to the Snowman if they are holding the Snowball Barrage ability.
execute as @s[tag=ogvz.zombie.class.snowman] if items entity @s weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:6350}] at @s run function ogvz:zombie/ability/snowman/snowball_barrage_custom_bar

# Show experience bar to Piglin if they are holding the evolution passive ability.
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.inventory.evolution=1..}] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] if predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:96}}}} run function ogvz:zombie/ability/piglin/evolution_custom_bar_1
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.inventory.evolution=1..}] at @n[type=minecraft:marker,tag=ogvz.marker.shrine] unless predicate {condition:"entity_properties",entity:"this",predicate:{distance:{horizontal:{max:96}}}} run function ogvz:zombie/ability/piglin/evolution_custom_bar_0
execute as @s[tag=ogvz.zombie.class.piglin,scores={ogvz.inventory.evolution=1..}] unless entity @e[type=minecraft:marker,tag=ogvz.marker.shrine] run function ogvz:zombie/ability/piglin/evolution_custom_bar_0

# Show Silverfish Egg custom bar to the Silverfish if they are holding Infest ability.
execute as @s[tag=ogvz.zombie.class.silverfish] if items entity @s weapon.* minecraft:carrot_on_a_stick[minecraft:custom_data={active_id:6410}] at @s run function ogvz:zombie/ability/silverfish/silverfish_egg_custom_bar
