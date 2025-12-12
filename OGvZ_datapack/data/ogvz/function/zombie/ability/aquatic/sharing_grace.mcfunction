#> Description: Give dolphin's grace effect to other nearby non-aquatic zombies.
#> Called by: passive_detect.mcfunction
# note: excludes golems to reduce their mobility

effect give @a[tag=ogvz.zombie,tag=!ogvz.zombie.aquatic,tag=!ogvz.zombie.class.golem,distance=..16] minecraft:dolphins_grace 5 0
