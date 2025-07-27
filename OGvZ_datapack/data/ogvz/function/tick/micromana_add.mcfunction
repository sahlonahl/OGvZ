#> Description: Converts micromana into regular mana.
#> Comment: 1,000,000 micromana = 1 mana

# Remove 1000000 micromana from the score.
scoreboard players remove @s ogvz.dwarf.mana_buildup.micromana 1000000

# Increase the regular mana buildup scoreboard.
scoreboard players add @s ogvz.dwarf.mana_buildup.mana 1

# Repeat function until ogvz.dwarf.mana_buildup.micromana is below 1000000 micromana.
execute as @s[scores={ogvz.dwarf.mana_buildup.micromana=1000000..}] at @s run function ogvz:tick/micromana_add