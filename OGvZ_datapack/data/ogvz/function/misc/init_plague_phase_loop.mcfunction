#> Description: Tags a specific amount of dwarves with the plague tag.
#> Behavior: effectively a for loop that exits when there are enough monsters
#> called by: init_plague.mcfunction

# first, attempt to tag any player that volunteered for boss
#execute if entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.boss_volunteer] \
    run tag @r[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.boss_volunteer] add ogvz.dwarf.plague

# second, attempt to tag any player that volunteered for monster but not the boss
#execute unless entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.boss_volunteer] \
    if entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.monster_volunteer] \
    run tag @r[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.monster_volunteer] add ogvz.dwarf.plague

# third, attempt to tag any player that didn't volunteer for anything
#execute unless entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.boss_volunteer] \
    unless entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.monster_volunteer] \
    if entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=!ogvz.hero_volunteer] \
    run tag @r[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=!ogvz.hero_volunteer] add ogvz.dwarf.plague

# finally, attempt to tag any player that volunteered for hero (last resort)
#execute unless entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.boss_volunteer] \
    unless entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.monster_volunteer] \
    unless entity @a[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=!ogvz.hero_volunteer] \
    run tag @r[tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.hero_volunteer] add ogvz.dwarf.plague

# Tag a random non-hero dwarf that hasn't been tagged yet. Prioritize marked for death players first.
execute unless entity @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.marked_for_death] run tag @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague] add ogvz.dwarf.plague
execute if entity @a[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.marked_for_death] run tag @r[tag=ogvz.dwarf,tag=!ogvz.dwarf.class.hero,tag=!ogvz.dwarf.plague,tag=ogvz.marked_for_death] add ogvz.dwarf.plague

# Decrement the scoreboard.
scoreboard players remove &ogvz temp.kill_dwarf_count 1

# Repeat the loop until enough dwarves have been tagged.
execute if score &ogvz temp.kill_dwarf_count matches 1.. run function ogvz:misc/init_plague_phase_loop
