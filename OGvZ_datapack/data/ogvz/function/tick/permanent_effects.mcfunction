#> Description: Gives/removes effects from certain players.
#> Note: Some permanent effects are handled by ogvz:tick/innate_abilities.
#> Comment: This is used to prevent milk buckets from removing effects.

# Give player who haven't joined the game yet immunity to most damage and starvation, as well as night vision.
effect give @a[tag=!ogvz.joined_game] minecraft:resistance infinite 4 true
effect give @a[tag=!ogvz.joined_game] minecraft:saturation infinite 0 true
effect give @a[tag=!ogvz.joined_game] minecraft:night_vision infinite 0 true

# Last dwarf standing has various permanent effects.
effect give @a[tag=ogvz.dwarf.last_dwarf] minecraft:resistance infinite 1 true
effect give @a[tag=ogvz.dwarf.last_dwarf] minecraft:regeneration infinite 1 true
effect give @a[tag=ogvz.dwarf.last_dwarf] minecraft:speed infinite 1 true
effect give @a[tag=ogvz.dwarf.last_dwarf] minecraft:strength infinite 0 true
effect give @a[tag=ogvz.dwarf.last_dwarf] minecraft:glowing infinite 0 true

# Give zombies who haven't picked a class yet immunity to most damage and starvation, as well as blindness and invisibility.
effect give @a[tag=ogvz.zombie,tag=!ogvz.zombie.class] minecraft:resistance infinite 4 true
effect give @a[tag=ogvz.zombie,tag=!ogvz.zombie.class] minecraft:saturation infinite 0 true
effect give @a[tag=ogvz.zombie,tag=!ogvz.zombie.class] minecraft:blindness infinite 1 true
effect give @a[tag=ogvz.zombie,tag=!ogvz.zombie.class] minecraft:invisibility infinite 0 true

# All zombies with chosen classes have permanent night vision and conduit power.
effect give @a[tag=ogvz.zombie.class] minecraft:night_vision infinite 0 true
effect give @a[tag=ogvz.zombie.class] minecraft:conduit_power infinite 0 true

# All plagued dwarves get permanent withering and cannot regenerate or have absorption.
effect give @a[tag=ogvz.dwarf.plague] minecraft:wither infinite 2
effect clear @a[tag=ogvz.dwarf.plague] minecraft:regeneration
effect clear @a[tag=ogvz.dwarf.plague] minecraft:absorption
