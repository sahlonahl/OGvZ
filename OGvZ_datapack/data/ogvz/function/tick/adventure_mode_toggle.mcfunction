#> Description: Toggles the player between adventure and survival mode.

# Give or remove the adventure tool tag depending on if the player has an adventure tool in their hand or not.
execute as @s[tag=!ogvz.adventure.tool] if items entity @s weapon.mainhand *[minecraft:custom_data~{"adventure_mode":1}] run tag @s add ogvz.adventure.tool
execute as @s[tag=ogvz.adventure.tool] unless items entity @s weapon.mainhand *[minecraft:custom_data~{"adventure_mode":1}] run tag @s remove ogvz.adventure.tool

# If the player is in survival mode and has any adventure tag, switch them to the adventure mode.
execute as @s[gamemode=survival] unless entity @s[ \
  tag=!ogvz.adventure.lobby, \
  tag=!ogvz.adventure.zombie_spawn, \
  tag=!ogvz.adventure.tool \
] run gamemode adventure @s

# If the player is in adventure mode and has no adventure tags, switch them to the survival mode.
execute as @s[gamemode=adventure] if entity @s[ \
  tag=!ogvz.adventure.lobby, \
  tag=!ogvz.adventure.zombie_spawn, \
  tag=!ogvz.adventure.tool \
] run gamemode survival @s
