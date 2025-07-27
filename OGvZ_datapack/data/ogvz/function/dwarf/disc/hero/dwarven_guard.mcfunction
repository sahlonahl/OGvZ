#> Description: Turns the player into the dwarven guard dwarf hero.

# Remove the hero spawn disc if the player used it.
item replace entity @s[tag=temp.use.mainhand] weapon.mainhand with minecraft:air
item replace entity @s[tag=temp.use.offhand] weapon.offhand with minecraft:air

# Clear the player's inventory.
effect clear @s

# Fully heal and saturate the player.
effect give @s minecraft:instant_health 1 5 true
effect give @s minecraft:saturation 1 20 true

# Remove tags, attributes and clear scoreboards from the player.
execute as @s at @s run function ogvz:misc/remove_tags
execute as @s at @s run function ogvz:misc/remove_attributes
execute as @s at @s run function ogvz:misc/clear_scoreboards

# Give the player all the proper tags.
tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.hero
tag @s add ogvz.dwarf.class.hero.dwarven_guard
tag @s add ogvz.mana

# Put the player on the dwarven guard dwarf hero team.
team join d0DWARVEN_GUARD @s

# Unequip the player's armor.
execute as @s at @s run function ogvz:misc/drop_armor

### Give the player all the assassin slayer items.
# Dwarven Guard Helmet (armor)
item replace entity @s armor.head with minecraft:iron_helmet[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Dwarven Guard Helmet",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"head",id:"ogvz:head"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"head",id:"ogvz:head"} \
  ] \
]
# Dwarven Guard Chestplate (armor)
item replace entity @s armor.chest with minecraft:iron_chestplate[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Dwarven Guard Chestplate",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":5, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:8,operation:"add_value",slot:"chest",id:"ogvz:chest"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"chest",id:"ogvz:chest"} \
  ] \
]
# Dwarven Guard Leggings (armor)
item replace entity @s armor.legs with minecraft:iron_leggings[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Dwarven Guard Leggings",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":5, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:6,operation:"add_value",slot:"legs",id:"ogvz:legs"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"legs",id:"ogvz:legs"} \
  ] \
]
# Dwarven Guard Boots (armor)
item replace entity @s armor.feet with minecraft:iron_boots[ \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Dwarven Guard Boots",color:"gold"}, \
  minecraft:enchantments={ \
    "minecraft:protection":5, \
    "minecraft:feather_falling":4, \
    "minecraft:binding_curse":1 \
  }, \
  minecraft:attribute_modifiers=[ \
    {type:"minecraft:armor",amount:3,operation:"add_value",slot:"feet",id:"ogvz:feet"}, \
    {type:"minecraft:armor_toughness",amount:2,operation:"add_value",slot:"feet",id:"ogvz:feet"} \
  ] \
]

# Elder Guardian Eye
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4300}, \
  minecraft:item_model="ogvz:elder_guardian_eye", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={text:"Elder Guardian Eye",color:"aqua",bold:true}, \
  minecraft:lore=[ \
    {text:"Shoots a damaging electric beam.",color:"blue"}, \
    {text:"The beam is stronger, shoots",color:"blue"}, \
    {text:"further and pierces zombies when",color:"blue"}, \
    {text:"you are submerged in water.",color:"blue"}, \
    {text:"5 second cooldown",color:"red",italic:false}, \
    {text:"Requires 15 mana",color:"red",italic:false}, \
    {text:"Active Item",color:"green",italic:false}, \
    {text:"Heroic Item",color:"gold",italic:false,bold:true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Ocean's Pearl
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4301}, \
  minecraft:item_model="ogvz:oceans_pearl", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={text:"Ocean's Pearl",color:"light_purple",bold:true}, \
  minecraft:lore=[ \
    {text:"Places an ocean's pearl above",color:"blue"}, \
    {text:"you, which grants buffs to all",color:"blue"}, \
    {text:"dwarves nearby.",color:"blue"}, \
    {text:"The pearl must be unobstructed",color:"blue"}, \
    {text:"in order to work.",color:"blue"}, \
    {text:"You can have up to 2 ocean's.",color:"blue"}, \
    {text:"pearls active at once.",color:"blue"}, \
    {text:"The pearl will break after",color:"blue"}, \
    {text:"sustaining enough damage.",color:"blue"}, \
    {text:"30 second cooldown",color:"red",italic:false}, \
    {text:"Requires 50 mana",color:"red",italic:false}, \
    {text:"Active Item",color:"green",italic:false}, \
    {text:"Heroic Item",color:"gold",italic:false,bold:true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Glowing Shell
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:4302}, \
  minecraft:item_model="ogvz:glowing_shell", \
  minecraft:unbreakable={}, \
  minecraft:tooltip_style="ogvz:legendary", \
  minecraft:item_name={text:"Glowing Shell",color:"aqua",bold:true}, \
  minecraft:lore=[ \
    {text:"Creates a temporary area of",color:"blue"}, \
    {text:"effect, where non-hero dwarves",color:"blue"}, \
    {text:"can regenerate mana.",color:"blue"}, \
    {text:"30 second cooldown",color:"red",italic:false}, \
    {text:"Requires 20 mana",color:"red",italic:false}, \
    {text:"Active Item",color:"green",italic:false}, \
    {text:"Heroic Item",color:"gold",italic:false,bold:true} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]

# Display a message about the player becoming the hero to all dwarves.
tellraw @a[tag=ogvz.dwarf] [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Due to their valiant efforts,\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {"selector":"@s"}, \
  {text:"\n"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"has been proclaimed as a ",color:"yellow"}, \
  {text:"Hero",color:"gold",bold:true}, \
  {text:"!",color:"yellow"} \
]

# Play a sound and create particles.
playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0 0 0.04 30
