#> Description: Turns the player into the enderman.

# Clear the player's inventory and effects.
clear @s
effect clear @s

# Fully heal and saturate the player.
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove tags, attributes and clear scoreboards off the player.
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

# Give the player the proper tags.
tag @s add ogvz.zombie
tag @s add ogvz.zombie.class
tag @s add ogvz.zombie.class.enderman

# Put the player on the enderman zombie team.
team join z6ENDERMAN @s

### Equip the player with enderman armor (leather tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:leather_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Enderman Head",color:"aqua"}, \
  minecraft:item_model="ogvz:enderman_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Chestplate
item replace entity @s armor.chest with minecraft:leather_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Enderman Chestplate"}, \
  minecraft:dyed_color=1052688, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
# Leggings
item replace entity @s armor.legs with minecraft:leather_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Enderman Leggings"}, \
  minecraft:dyed_color=1052688, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]
# Boots
item replace entity @s armor.feet with minecraft:leather_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Enderman Boots"}, \
  minecraft:dyed_color=1052688, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:1,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:dyed_color" \
    ] \
  } \
]

### Give the player all the enderman items.
# Teleport
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6600}, \
  minecraft:item_model="ogvz:teleport", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Teleport",color:"light_purple"}, \
  minecraft:lore=[ \
    {text:"Teleport to a targeted block.",color:"blue"}, \
    {text:"10 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Create Portal
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6601}, \
  minecraft:item_model="ogvz:create_portal", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Create Portal",color:"light_purple"}, \
  minecraft:lore=[ \
    {text:"Open an Ender Portal above/below",color:"blue"}, \
    {text:"you.",color:"blue"}, \
    {text:"Other zombies will be able to",color:"blue"}, \
    {text:"teleport to the ender portal.",color:"blue"}, \
    {text:"Normally you will create the",color:"blue"}, \
    {text:"ender portal high above you, but",color:"blue"}, \
    {text:"you can sneak to place it right",color:"blue"}, \
    {text:"below you instead.",color:"blue"}, \
    {text:"You need enough room above you",color:"blue"}, \
    {text:"to create the ender portal.",color:"blue"}, \
    {text:"The ender portal will close when",color:"blue"}, \
    {text:"one of its end stones is broken.",color:"blue"}, \
    {text:"Creating the ender portal takes time.",color:"blue"}, \
    {text:"You will not be able to move",color:"blue"}, \
    {text:"during the process and you will",color:"blue"}, \
    {text:"be interrupted if you take",color:"blue"}, \
    {text:"damage or teleport.",color:"blue"}, \
    {text:"You can manually interrupt the",color:"blue"}, \
    {text:"ability by using it again.",color:"blue"}, \
    {text:"15 second cooldown",color:"red",italic:false}, \
    {text:"Single-use",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Steak x64
give @s minecraft:cooked_beef 64

# Give the player the Ender Eye ability if the ender portal exists.
execute if entity @e[type=minecraft:marker,tag=ogvz.marker.ender_portal] as @s at @s run function ogvz:give/other/ender_eye

# Give the player the Suicide Pill.
execute as @s at @s run function ogvz:give/hidden/suicide_pill_slot_0

# Give the player the punish tag and set a timer for it's removal.
tag @s add ogvz.zombie.punish
scoreboard players set @s ogvz.zombie.punish_timer.ticks 600

# Display an enderman message to all players that joined the game.
tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {selector:"@s",color:"light_purple"}, \
  {text:" has risen!",color:"light_purple"} \
]

# Play a global sound to all players that joined the game.
execute as @a[tag=ogvz.joined_game] run playsound minecraft:entity.enderman.scream player @s ~ ~512 ~ 1 1 1
