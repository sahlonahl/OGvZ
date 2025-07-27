#> Description: Main branch for all right-click items/abilities (active items/abilities and secondary attacks).
#> Comment: Tests for and executes functions/dialogs from right-clicking a retextured carrot on a stick.

# Return if the player hasn't used a right-click item/ability.
execute unless entity @s[scores={ogvz.rclick.use=1..}] run return 0

# Reset the right-click scoreboard.
scoreboard players set @s ogvz.rclick.use 0

# Return if the player isn't holding a right-click item (carrot on a stick).
execute unless items entity @s weapon.* minecraft:carrot_on_a_stick run return 0

# Return if the right-click global cooldown hasn't ran out yet.
execute unless entity @s[scores={ogvz.rclick.cooldown=0}] run return 0

# Set the global right-click cooldown.
scoreboard players set @s ogvz.rclick.cooldown 5

# Give the player a temporary tag depending on which hand holds the active item/ability.
execute if items entity @s weapon.mainhand minecraft:carrot_on_a_stick run tag @s add temp.use.mainhand
execute if items entity @s[tag=!temp.use.mainhand] weapon.offhand minecraft:carrot_on_a_stick run tag @s add temp.use.offhand

# Get the active id of the active item/ability.
execute store result score @s[tag=temp.use.mainhand] ogvz.rclick.active_id run data get entity @s SelectedItem.components."minecraft:custom_data".active_id
execute store result score @s[tag=temp.use.offhand] ogvz.rclick.active_id run data get entity @s equipment.offhand.components."minecraft:custom_data".active_id

### Admin tools (1xxx)
execute as @s[tag=ogvz.admin,scores={ogvz.rclick.active_id=1000}] at @s run dialog show @s ogvz:admin_menu
execute as @s[tag=ogvz.admin,scores={ogvz.rclick.active_id=1001}] at @s run dialog show @s ogvz:tool_menu/lobby
execute as @s[tag=ogvz.admin,scores={ogvz.rclick.active_id=1002}] at @s run dialog show @s ogvz:tool_menu/shrine
execute as @s[tag=ogvz.admin,scores={ogvz.rclick.active_id=1003}] at @s run dialog show @s ogvz:tool_menu/zombie_spawn
execute as @s[tag=ogvz.admin,scores={ogvz.rclick.active_id=1004}] at @s run dialog show @s ogvz:tool_menu/boss_spawn
execute as @s[tag=ogvz.admin,scores={ogvz.rclick.active_id=1005}] at @s run function ogvz:admin/setup/setup_check

### Discs (2xxx)
# Dwarf discs (200x)
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2000}] at @s run function ogvz:dwarf/disc/builder
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2001}] at @s run function ogvz:dwarf/disc/blacksmith
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2002}] at @s run function ogvz:dwarf/disc/tailor
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2003}] at @s run function ogvz:dwarf/disc/baker
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2004}] at @s run function ogvz:dwarf/disc/alchemist
execute as @s[tag=!ogvz.dwarf.class,tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2005}] at @s run function ogvz:dwarf/disc/enchanter
# Hero discs (201x)
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2010}] at @s run function ogvz:dwarf/disc/hero/dragon_warrior
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2011}] at @s run function ogvz:dwarf/disc/hero/wither_warrior
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2012}] at @s run function ogvz:dwarf/disc/hero/dwarven_guard
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=2013}] at @s run function ogvz:dwarf/disc/hero/assassin_slayer
# Zombie discs (21xx)
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2100}] at @s run function ogvz:zombie/disc/zombie_variant/zombie
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2101}] at @s run function ogvz:zombie/disc/zombie_variant/husk
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2102}] at @s run function ogvz:zombie/disc/zombie_variant/vindicator
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2103}] at @s run function ogvz:zombie/disc/zombie_variant/drowned
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2110}] at @s run function ogvz:zombie/disc/skeleton_variant/skeleton
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2111}] at @s run function ogvz:zombie/disc/skeleton_variant/wither_skeleton
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2112}] at @s run function ogvz:zombie/disc/skeleton_variant/pillager
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2113}] at @s run function ogvz:zombie/disc/skeleton_variant/guardian
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2120}] at @s run function ogvz:zombie/disc/creeper
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2121}] at @s run function ogvz:zombie/disc/spider
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2130}] at @s run function ogvz:zombie/disc/bee
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2131}] at @s run function ogvz:zombie/disc/blaze
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2132}] at @s run function ogvz:zombie/disc/chicken_nugget
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2133}] at @s run function ogvz:zombie/disc/chillager
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2134}] at @s run function ogvz:zombie/disc/ocelot
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2135}] at @s run function ogvz:zombie/disc/phantom
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2136}] at @s run function ogvz:zombie/disc/snowman
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2137}] at @s run function ogvz:zombie/disc/wolf
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2140}] at @s run function ogvz:zombie/disc/piglin
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2141}] at @s run function ogvz:zombie/disc/silverfish
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2150}] at @s run function ogvz:zombie/disc/hoglin
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2160}] at @s run function ogvz:zombie/disc/enderman
execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2161}] at @s run function ogvz:zombie/disc/golem
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2170}] at @s run function ogvz:zombie/disc/ghast
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2171}] at @s run function ogvz:zombie/disc/johnny
#execute as @s[tag=!ogvz.zombie.class,tag=ogvz.zombie,scores={ogvz.rclick.active_id=2172}] at @s run function ogvz:zombie/disc/ravager

### Dwarf items (3xxx)
# Dwarf books (30xx)
execute as @s[tag=ogvz.dwarf.class.builder,scores={ogvz.rclick.active_id=3000}] at @s run function ogvz:dwarf/item/summoning_book/builder
execute as @s[tag=ogvz.dwarf.class.blacksmith,scores={ogvz.rclick.active_id=3001}] at @s run function ogvz:dwarf/item/summoning_book/blacksmith
execute as @s[tag=ogvz.dwarf.class.tailor,scores={ogvz.rclick.active_id=3002}] at @s run function ogvz:dwarf/item/summoning_book/tailor
execute as @s[tag=ogvz.dwarf.class.baker,scores={ogvz.rclick.active_id=3003}] at @s run function ogvz:dwarf/item/summoning_book/baker
execute as @s[tag=ogvz.dwarf.class.alchemist,scores={ogvz.rclick.active_id=3004}] at @s run function ogvz:dwarf/item/summoning_book/alchemist
execute as @s[tag=ogvz.dwarf.class.enchanter,scores={ogvz.rclick.active_id=3005}] at @s run function ogvz:dwarf/item/summoning_book/enchanter
execute as @s[tag=ogvz.dwarf,scores={ogvz.rclick.active_id=3006}] at @s run function ogvz:dwarf/item/legendary_book
# Dwarf items (31xx)
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3100}] at @s run function ogvz:dwarf/item/magic_potion/regeneration
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3101}] at @s run function ogvz:dwarf/item/magic_potion/swiftness
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3102}] at @s run function ogvz:dwarf/item/magic_potion/strength
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3103}] at @s run function ogvz:dwarf/item/magic_potion/leaping
execute as @s[tag=ogvz.mana,scores={ogvz.rclick.active_id=3104}] at @s run function ogvz:dwarf/item/pearl_rod
execute as @s[scores={ogvz.rclick.active_id=3105}] at @s run function ogvz:dwarf/item/water_wand
execute as @s[scores={ogvz.rclick.active_id=3106}] at @s run function ogvz:dwarf/item/fertilizer

### Dwarf hero items (4xxx)
# Dragon Warrior (40xx)
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior,scores={ogvz.rclick.active_id=4000}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/conjure_wall
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior,scores={ogvz.rclick.active_id=4001}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dragon_scale
execute as @s[tag=ogvz.dwarf.class.hero.dragon_warrior,scores={ogvz.rclick.active_id=4002}] at @s run function ogvz:dwarf/item/hero/dragon_warrior/dwarven_ruby

# Wither Warrior (41xx)
execute as @s[tag=ogvz.dwarf.class.hero.wither_warrior,scores={ogvz.rclick.active_id=4101}] at @s run function ogvz:dwarf/item/hero/wither_warrior/phantom_slash

# Assassin Slayer (42xx)
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4200}] at @s run function ogvz:dwarf/item/hero/assassin_slayer/assassinate
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4201}] at @s run function ogvz:dwarf/item/hero/assassin_slayer/cloak_of_shadows
execute as @s[tag=ogvz.dwarf.class.hero.assassin_slayer,scores={ogvz.rclick.active_id=4202}] at @s run function ogvz:dwarf/item/hero/assassin_slayer/mana_star

# Dwarven Guard (43xx)
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard,scores={ogvz.rclick.active_id=4300}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/elder_guardian_eye
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard,scores={ogvz.rclick.active_id=4301}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/oceans_pearl
execute as @s[tag=ogvz.dwarf.class.hero.dwarven_guard,scores={ogvz.rclick.active_id=4302}] at @s run function ogvz:dwarf/item/hero/dwarven_guard/glowing_shell

### Dwarf legendary items (5xxx)


### Zombie abilities (6xxx)
# Zombie variants (600x)
# Zombie (601x)
# Husk (602x)
# Vindicator (603x)
# Drowned (604x)
# Skeleton variants (610x)
# Skeleton (611x)
# Wither skeleton (612x)
# Pillager (613x)
# Guardian (614x)
execute as @s[tag=ogvz.zombie.class.skeleton_variant.guardian,scores={ogvz.rclick.active_id=6140}] at @s run function ogvz:zombie/ability/skeleton_variant/guardian/beam
# Creeper (620x)
execute as @s[tag=ogvz.zombie.class.creeper,scores={ogvz.rclick.active_id=6200}] at @s run function ogvz:zombie/ability/creeper/explode
# Spider (621x)
execute as @s[tag=ogvz.zombie.class.spider,scores={ogvz.rclick.active_id=6210}] at @s run function ogvz:zombie/ability/spider/web
# Blaze (630x)
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.rclick.active_id=6300}] at @s run function ogvz:zombie/ability/blaze/fireball
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.rclick.active_id=6301}] at @s run function ogvz:zombie/ability/blaze/firefly
execute as @s[tag=ogvz.zombie.class.blaze,scores={ogvz.rclick.active_id=6302}] at @s run function ogvz:zombie/ability/blaze/heat_wave
# Chicken Nugget (631x)
execute as @s[tag=ogvz.zombie.class.chicken_nugget,scores={ogvz.rclick.active_id=6310}] at @s run function ogvz:zombie/ability/chicken_nugget/eggsplosive_egg
execute as @s[tag=ogvz.zombie.class.chicken_nugget,scores={ogvz.rclick.active_id=6311}] at @s run function ogvz:zombie/ability/chicken_nugget/flutter_toggle
# Chillager (632x)
execute as @s[tag=ogvz.zombie.class.chillager,scores={ogvz.rclick.active_id=6320}] at @s run function ogvz:zombie/ability/chillager/invisibility
execute as @s[tag=ogvz.zombie.class.chillager,scores={ogvz.rclick.active_id=6321}] at @s run function ogvz:zombie/ability/chillager/ice_bridge
# Ocelot (633x)
execute as @s[tag=ogvz.zombie.class.ocelot,scores={ogvz.rclick.active_id=6330}] at @s run function ogvz:zombie/ability/ocelot/slapper_fish_charge
execute as @s[tag=ogvz.zombie.class.ocelot,scores={ogvz.rclick.active_id=6331}] at @s run function ogvz:zombie/ability/ocelot/mana_steal
execute as @s[tag=ogvz.zombie.class.ocelot,scores={ogvz.rclick.active_id=6332}] at @s run function ogvz:zombie/ability/ocelot/disarm
# Phantom (634x)
execute as @s[tag=ogvz.zombie.class.phantom,scores={ogvz.rclick.active_id=6340}] at @s run function ogvz:zombie/ability/phantom/delirium
# Snowman (635x)
execute as @s[tag=ogvz.zombie.class.snowman,scores={ogvz.rclick.active_id=6350}] at @s run function ogvz:zombie/ability/snowman/snowball_barrage
execute as @s[tag=ogvz.zombie.class.snowman,scores={ogvz.rclick.active_id=6351}] at @s run function ogvz:zombie/ability/snowman/freeze
# Wolf (636x)
execute as @s[tag=ogvz.zombie.class.wolf,scores={ogvz.rclick.active_id=6360}] at @s run function ogvz:zombie/ability/wolf/howl
# Bee (637x)
execute as @s[tag=ogvz.zombie.class.bee,scores={ogvz.rclick.active_id=6370}] at @s run function ogvz:zombie/ability/bee/honey
execute as @s[tag=ogvz.zombie.class.bee,scores={ogvz.rclick.active_id=6371}] at @s run function ogvz:zombie/ability/bee/pollen_bomb
execute as @s[tag=ogvz.zombie.class.bee,scores={ogvz.rclick.active_id=6372}] at @s run function ogvz:zombie/ability/bee/hover_toggle
# Piglin (640x)
# Silverfish (641x)
execute as @s[tag=ogvz.zombie.class.silverfish,scores={ogvz.rclick.active_id=6410}] at @s run function ogvz:zombie/ability/silverfish/infest
execute as @s[tag=ogvz.zombie.class.silverfish,scores={ogvz.rclick.active_id=6411}] at @s run function ogvz:zombie/ability/silverfish/roar
# Hoglin (650x)
# Enderman (660x)
execute as @s[tag=ogvz.zombie.class.enderman,scores={ogvz.rclick.active_id=6600}] at @s run function ogvz:zombie/ability/enderman/teleport
execute as @s[tag=ogvz.zombie.class.enderman,scores={ogvz.rclick.active_id=6601}] at @s run function ogvz:zombie/ability/enderman/create_portal
# Golem (661x)
execute as @s[tag=ogvz.zombie.class.golem,scores={ogvz.rclick.active_id=6610}] at @s run function ogvz:zombie/ability/golem/fissure
execute as @s[tag=ogvz.zombie.class.golem,scores={ogvz.rclick.active_id=6611}] at @s run function ogvz:zombie/ability/golem/leap
# Aquatic zombies (690x)

### Zombie boss abilities (7xxx)


### Zombie nature given abilities (8xxx)


### Other (9xxx)
execute as @s[tag=!ogvz.joined_game,scores={ogvz.rclick.active_id=9000}] at @s run function ogvz:misc/join_game
execute as @s[tag=ogvz.zombie.class,scores={ogvz.rclick.active_id=9001}] at @s run function ogvz:zombie/ability/suicide_pill
execute as @s[tag=ogvz.zombie.class,scores={ogvz.rclick.active_id=9002}] at @s run function ogvz:zombie/ability/obsidian_skull
execute as @s[tag=ogvz.zombie.class,scores={ogvz.rclick.active_id=9003}] at @s run function ogvz:zombie/ability/enderman/ender_eye
execute as @s[scores={ogvz.rclick.active_id=9004}] at @s run dialog show @s ogvz:rulebook

# Remove temporary tags.
tag @s remove temp.use.mainhand
tag @s remove temp.use.offhand
