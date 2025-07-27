#> Description: Gives mana (levels) to a player based on the mana they've built up.

# Remove 1 mana from the score.
scoreboard players remove @s ogvz.dwarf.mana_buildup.mana 1

# Builders have mana cap of 9999.
# Non-builders have a mana cap of 200.
experience add @s[tag=ogvz.dwarf.class.builder,level=..9998] 1 levels
experience add @s[tag=!ogvz.dwarf.class.builder,level=..199] 1 levels

# Set mana buildup to 0 if mana cap has been reached.
scoreboard players set @s[tag=ogvz.dwarf.class.builder,level=9999..] ogvz.dwarf.mana_buildup.mana 0
scoreboard players set @s[tag=!ogvz.dwarf.class.builder,level=200..] ogvz.dwarf.mana_buildup.mana 0

# Update the exp bar if all the mana buildup has been added.
execute as @s[scores={ogvz.dwarf.mana_buildup.mana=0}] at @s run function ogvz:misc/mana_bar

# Suppress the level up ding sound.
#stopsound @a[distance=..17] player minecraft:entity.player.levelup

# Repeat function until ogvz.dwarf.mana_buildup.mana is at 0 mana.
execute as @s[scores={ogvz.dwarf.mana_buildup.mana=1..}] at @s run function ogvz:tick/mana_add
