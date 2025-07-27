#> Description: Show the ocean's pearl custom bar.

# Add a temporary tag to the player.
tag @s add temp.player

# Create a temporary scoreboard.
scoreboard objectives add temp.custom_bar_value dummy

# Set the custom bar value to 2, then decrement it for each active ocean's pearl.
scoreboard players set @s temp.custom_bar_value 2
execute as @e[type=minecraft:item_display,tag=ogvz.item_display.oceans_pearl] run scoreboard players remove @a[tag=temp.player] temp.custom_bar_value 1

# Display the custom bar in the actionbar.
title @s[scores={temp.custom_bar_value=..0}] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF1A3\u1210\uF102\u1210"}
title @s[scores={temp.custom_bar_value=1}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF1A3\u1211\uF102\u1210"}
title @s[scores={temp.custom_bar_value=2..}] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF1A3\u1211\uF102\u1211"}

# Remove temporary tags.
tag @a remove temp.player

# Remove temporary scoreboards.
scoreboard objectives remove temp.custom_bar_value
scoreboard objectives remove temp.max_value
