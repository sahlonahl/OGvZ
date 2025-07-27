#> Description: Tags a specific amount of dwarves with the plague tag.

# Tag a random non-hero dwarf that hasn't been tagged yet. Prioritize marked for death players first.
execute unless entity @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.marked_for_death] run tag @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague] add ogvz.dwarf.plague
execute if entity @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.marked_for_death] run tag @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.marked_for_death] add ogvz.dwarf.plague

# Decrement the scoreboard.
scoreboard players remove &ogvz temp.kill_dwarf_count 1

# Repeat the loop until enough dwarves have been tagged.
execute if score &ogvz temp.kill_dwarf_count matches 1.. run function ogvz:misc/init_plague_phase_loop
