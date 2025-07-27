#> Description: Toggle the hover ability.

# Display a fail message and return if the player isn't on ground.
title @s[predicate=!ogvz:is_on_ground] actionbar [ \
  "", \
  {text:"[Hover]",bold:true,color:"red"}, \
  {text:" You need to be on ground to toggle this ability.",color:"red"} \
]
execute as @s[predicate=!ogvz:is_on_ground] run return 0

# Give a tag to the player if the hover ability is enabled.
execute if items entity @s[tag=temp.use.mainhand] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled
execute if items entity @s[tag=temp.use.offhand] weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled

# Display a disable message if hover is enabled.
title @s[tag=temp.enabled] actionbar [ \
  "", \
  {text:"[Hover]",bold:true,color:"light_purple"}, \
  {text:" Disabled!",color:"light_purple"} \
]

# Display an enable message if hover is disabled.
title @s[tag=!temp.enabled] actionbar [ \
  "", \
  {text:"[Hover]",bold:true,color:"light_purple"}, \
  {text:" Enabled!",color:"light_purple"} \
]

# Play a sound.
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

# Toggle the ability.
item modify entity @s[tag=temp.use.mainhand,tag=temp.enabled] weapon.mainhand ogvz:hover_disable
item modify entity @s[tag=temp.use.mainhand,tag=!temp.enabled] weapon.mainhand ogvz:hover_enable
item modify entity @s[tag=temp.use.offhand,tag=temp.enabled] weapon.offhand ogvz:hover_disable
item modify entity @s[tag=temp.use.offhand,tag=!temp.enabled] weapon.offhand ogvz:hover_enable

# If ability was enabled, remove attributes and reset the base gravity attribute.
attribute @s[tag=temp.enabled] minecraft:gravity base reset
attribute @s[tag=temp.enabled] minecraft:gravity modifier remove ogvz.bee.hover.ascend.gravity
attribute @s[tag=temp.enabled] minecraft:gravity modifier remove ogvz.bee.hover.descend.gravity

# If ability was disabled, set the base gravity attribute to 0.
attribute @s[tag=!temp.enabled] minecraft:gravity base set 0

# Remove temporary tag.
tag @s remove temp.enabled
