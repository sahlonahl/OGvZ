#> Description: Handles the animation timing for opening the ender portal.

# At tick 0, start the animation
execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=0}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/start

# At tick 15, create the middle ring.
execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=15}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/create_middle_circle

# At tick 30, create the outer ring.
execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=30}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/create_outer_circle

# At tick 60, open the portal.
execute as @s[scores={ogvz.marker.ender_portal.animation.ticks=60}] at @s run function ogvz:zombie/ability/enderman/ender_portal_animation/open_portal

# Increment the animation tick scoreboard.
scoreboard players add @s ogvz.marker.ender_portal.animation.ticks 1
