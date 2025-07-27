#> Description: Fills/drains the invisibility bar and checks for if it's empty.

# Drain invisibility if invisible.
scoreboard players remove @s[tag=ogvz.zombie.class.chillager.invisible] ogvz.chillager.invisibility.duration 2

# Recharge invisibility if visible and not full.
scoreboard players add @s[tag=!ogvz.zombie.class.chillager.invisible,scores={ogvz.chillager.invisibility.duration=..1199}] ogvz.chillager.invisibility.duration 1

# Cancel invisibility if empty.
execute as @s[tag=ogvz.zombie.class.chillager.invisible,scores={ogvz.chillager.invisibility.duration=..0}] at @s run function ogvz:zombie/ability/chillager/invisibility_cancel
