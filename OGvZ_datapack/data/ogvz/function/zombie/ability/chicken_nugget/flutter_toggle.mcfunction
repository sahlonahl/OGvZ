#> Description: Toggles the flutter ability.

# Put a temporary tag on a player if the ability is enabled.
execute if items entity @s[tag=temp.use.mainhand] weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled
execute if items entity @s[tag=temp.use.offhand] weapon.offhand minecraft:carrot_on_a_stick[minecraft:custom_data~{disabled:0}] run tag @s add temp.enabled

# Display a disable message if the ability is enabled.
title @s[tag=temp.enabled] actionbar [ \
  "", \
  {text:"[Flutter]",bold:true,color:"light_purple"}, \
  {text:" Disabled!",color:"light_purple"} \
]

# Display an enable message if the ability is disabled.
title @s[tag=!temp.enabled] actionbar [ \
  "", \
  {text:"[Flutter]",bold:true,color:"light_purple"}, \
  {text:" Enabled!",color:"light_purple"} \
]

# Play a toggle sound.
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 1 1

# Toggle the ability.
item modify entity @s[tag=temp.use.mainhand,tag=temp.enabled] weapon.mainhand ogvz:flutter_disable
item modify entity @s[tag=temp.use.mainhand,tag=!temp.enabled] weapon.mainhand ogvz:flutter_enable
item modify entity @s[tag=temp.use.offhand,tag=temp.enabled] weapon.offhand ogvz:flutter_disable
item modify entity @s[tag=temp.use.offhand,tag=!temp.enabled] weapon.offhand ogvz:flutter_enable

# If the ability was enabled, clear the slow falling effect.
effect clear @s[tag=temp.enabled] minecraft:slow_falling

# Remove the temporary tag.
tag @s remove temp.enabled
