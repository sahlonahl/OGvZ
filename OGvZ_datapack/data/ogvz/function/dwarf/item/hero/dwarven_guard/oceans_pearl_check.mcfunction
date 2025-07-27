#> Description: Checks if the ocean's pearl hitbox has been killed.

# Return if the slime hitbox is still alive.
execute if entity @e[type=minecraft:slime,tag=ogvz.oceans_pearl_hitbox,distance=..1] run return 0

# Show kill particles.
particle minecraft:dragon_breath ~ ~ ~ 0 0 0 0.1 100 force

# Play a sound. Dwarven Guard hears it at their own location, everyone else hears it at the broken Ocean's Pearl.
execute as @a[tag=ogvz.dwarf.class.hero.dwarven_guard] at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 0.5 1
playsound minecraft:block.beacon.deactivate player @a[tag=!ogvz.dwarf.class.hero.dwarven_guard] ~ ~ ~ 1 0.5

# Display a broken ocean's pearl message to the dwarven guard.
title @a[tag=ogvz.dwarf.class.hero.dwarven_guard] actionbar [ \
  "", \
  {text:"[Ocean's Pearl]",bold:true,color:"light_purple"}, \
  {text:" An ocean's pearl has been broken!",color:"light_purple"} \
]

# Hide the dwarven guard's custom bars for a bit.
scoreboard players set @a[tag=ogvz.dwarf.class.hero.dwarven_guard] ogvz.misc.custom_bar_hide.ticks 20

# Kill the ocean's pearl display.
kill @s
