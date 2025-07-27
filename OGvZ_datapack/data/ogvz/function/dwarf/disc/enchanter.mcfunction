#> Description: Turns the player into the enchanter dwarf.

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
tag @s add ogvz.dwarf
tag @s add ogvz.dwarf.class
tag @s add ogvz.dwarf.class.enchanter
tag @s add ogvz.mana

# Put the player on the enchanter dwarf team.
team join d3ENCHANTER @s

### Give the player all the alchemist items.
# Summoning Book
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3005}, \
  minecraft:item_model="ogvz:summoning_book_enchanter", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Summoning Book",color:"green"}, \
  minecraft:lore=[ \
    {text:"Conjures lapis lazuli.",color:"blue"}, \
    {text:"Requires 1 Emerald",italic:false,color:"red"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Smooth Quartz x128
give @s minecraft:smooth_quartz 64
give @s minecraft:smooth_quartz 64
# Enchanting Table x1
give @s minecraft:enchanting_table 1
# Bookshelf x18
give @s minecraft:bookshelf 18
# Anvil x4
give @s minecraft:anvil 4
# Grindstone x1
give @s minecraft:grindstone 1
# Chest x12
give @s minecraft:chest 12
# Oak Sign x3
give @s minecraft:oak_sign 3
# Emerald x4
give @s minecraft:emerald[ \
  minecraft:lore=[ \
    {text:"Give to the enchanter.",color:"blue"} \
  ] \
] 4
# Legendary Book
execute as @s at @s run function ogvz:give/other/legendary_book

# Display a message on how to play as the enchanter.
tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You are an ",color:"yellow"}, \
  {text:"Enchanter",bold:true,color:"blue"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Your job is to enchant ",color:"yellow"}, \
  {text:"Armor",color:"gold"}, \
  {text:", ",color:"yellow"}, \
  {text:"Weapons",color:"gold"}, \
  {text:" and ",color:"yellow"}, \
  {text:"Tools",color:"gold"}, \
  {text:" for the\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"dwarves.\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Begin by using your ",color:"yellow"}, \
  {text:"Summoning Book",color:"gold"}, \
  {text:" to transmute\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"Emeralds",color:"gold"}, \
  {text:" into ",color:"yellow"}, \
  {text:"Lapis Lazuli",color:"gold"}, \
  {text:", then use it to enchant\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"items.\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You can get more ",color:"yellow"}, \
  {text:"Emeralds",color:"gold"}, \
  {text:" from other ",color:"yellow"}, \
  {text:"Dwarves",color:"aqua"}, \
  {text:".",color:"yellow"} \
]

# Play a sound and create particles.
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

# Display a message about the selected doom event.
function ogvz:misc/doom_event_message
