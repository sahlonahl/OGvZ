#> Description: Turns the player into the golem.

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
tag @s add ogvz.zombie.class.golem

# Increase max health by 10 hearts, multiply attack damage by 1000, multiply attack speed by 0.25, increase knocback resistance by 100%,
# increase explosion knockback resistance by 100%, multiply movement speed by 0.4, multiply jump strength by 0, nullify fall damage using attributes.
attribute @s minecraft:max_health modifier add ogvz.golem.max_health 20.0 add_value
attribute @s minecraft:attack_damage modifier add ogvz.golem.attack_damage 999.0 add_multiplied_total
attribute @s minecraft:attack_speed modifier add ogvz.golem.attack_speed -0.75 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add ogvz.golem.knockback_resistance 1.0 add_value
attribute @s minecraft:explosion_knockback_resistance modifier add ogvz.golem.explosion_knockback_resistance 1.0 add_value
attribute @s minecraft:movement_speed modifier add ogvz.golem.movement_speed -0.6 add_multiplied_total
attribute @s minecraft:jump_strength modifier add ogvz.golem.jump_strength -1.0 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier add ogvz.golem.fall_damage_multiplier -1.0 add_multiplied_total

# Put the player on the golem zombie team.
team join z6GOLEM @s

### Equip the player with golem armor (iron tier).
# Head (Helmet)
item replace entity @s armor.head with minecraft:iron_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Golem Head",color:"aqua"}, \
  minecraft:item_model="ogvz:golem_head", \
  minecraft:equippable={slot:"head"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Chestplate
item replace entity @s armor.chest with minecraft:iron_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Golem Chestplate"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"chest",id:"ogvz:chest"} \    
  ] \
]
# Leggings
item replace entity @s armor.legs with minecraft:iron_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Golem Leggings"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:5,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ] \
]
# Boots
item replace entity @s armor.feet with minecraft:iron_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Golem Boots"}, \
  minecraft:enchantment_glint_override=false, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ] \
]

### Give the player all the golem items.
# Fissure
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6610}, \
  minecraft:item_model="ogvz:fissure", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Fissure",color:"gray"}, \
  minecraft:lore=[ \
    {text:"Raise the ground in a straight",color:"blue"}, \
    {text:"line in front of you.",color:"blue"}, \
    {text:"5 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Leap
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:6611}, \
  minecraft:item_model="ogvz:leap", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Leap",color:"green"}, \
  minecraft:lore=[ \
    {text:"Jump high into the air.",color:"blue"}, \
    {text:"20 second cooldown",color:"red",italic:false}, \
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

# Display a golem message to all players that joined the game.
tellraw @a[tag=ogvz.joined_game] [ \
  "", \
  {text:"\u1120\u1121\u1122\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"light_purple"}, \
  {selector:"@s",color:"light_purple"}, \
  {text:" has risen!",color:"light_purple"} \
]

# Play a global sound to all players that joined the game.
execute as @a[tag=ogvz.joined_game] run playsound minecraft:entity.iron_golem.repair player @s ~ ~512 ~ 1 1 1
