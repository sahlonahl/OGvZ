#> Description: Shoots a beam that freezes the targeted player.

# Hide the custom bars for a bit.
scoreboard players set @s ogvz.misc.custom_bar_hide.ticks 20

# Display a fail message and return if the ability is on a cooldown.
execute if entity @s[scores={ogvz.snowman.freeze.cooldown.seconds=1..}] run title @s actionbar [ \
  "", \
  {text:"[Freeze]",bold:true,color:"red"}, \
  {text:" You have ",color:"red"}, \
  {"score":{"name":"@s","objective":"ogvz.snowman.freeze.cooldown.seconds"},bold:true,color:"red"}, \
  {text:" seconds remaining!",color:"red"} \
]
execute if entity @s[scores={ogvz.snowman.freeze.cooldown.seconds=1..}] run return 0

# Set the cooldown.
scoreboard players set @s ogvz.snowman.freeze.cooldown.seconds 30

# Display an activation message.
title @s actionbar [ \
  "", \
  {text:"[Freeze]",bold:true,color:"green"}, \
  {text:" Poof!",color:"green"} \
]

# Play an activation message.
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.6

# Tag the player as the ray origin.
tag @s add temp.ray_origin

# Summons two marker at players feet and gives them a proper tag.
execute summon minecraft:marker run tag @s add temp.ray
execute summon minecraft:marker run tag @s add temp.ray_origin

# Teleport the markers to the player's eyes and make them face in the same direction as the player.
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray] ~ ~ ~ ~ ~
execute anchored eyes positioned ^ ^ ^ rotated as @s run tp @n[type=minecraft:marker,tag=temp.ray_origin] ~ ~ ~ ~ ~

# Starts the ray casting loop.
execute as @n[type=minecraft:marker,tag=temp.ray] at @s run function ogvz:zombie/ability/snowman/freeze_loop

# Freeze all players who have been hit by the ray. Area Effect Cloud is used, to apply the effect with the icon, but without the particles.
execute as @a[tag=temp.hit] at @s run summon area_effect_cloud ~ ~ ~ {ReapplicationDelay:-1,Radius:0.0f,Duration:1,Age:-1,WaitTime:0,potion_contents:{custom_effects:[{id:"minecraft:unluck",amplifier:0,duration:100,show_particles:0b,show_icon:1b}]}}

# Display a message to the affected player.
title @a[tag=temp.hit] actionbar [ \
  "", \
  {text:"A Snowman has frozen you!",color:"red"} \
]

# Gets rid of the markers.
kill @e[type=minecraft:marker,tag=temp.ray]
kill @e[type=minecraft:marker,tag=temp.ray_origin]

# Remove tags
tag @s remove temp.ray_origin
tag @a remove temp.hit
tag @a remove temp.big_hitbox
tag @a remove temp.medium_hitbox
tag @a remove temp.small_hitbox
