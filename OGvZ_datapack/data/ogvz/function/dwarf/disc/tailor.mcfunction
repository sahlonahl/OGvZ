#> Description: Turns the player into the tailor dwarf.

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
tag @s add ogvz.dwarf.class.tailor
tag @s add ogvz.mana

# Put the player on the tailor dwarf team.
team join d3TAILOR @s

### Give the player all the tailor items.
# Summoning Book
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3002}, \
  minecraft:item_model="ogvz:summoning_book_tailor", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Summoning Book",color:"green"}, \
  minecraft:lore=[ \
    {text:"Conjures armor and shields.",color:"blue"}, \
    {text:"Requires 10 Dyes",italic:false,color:"red"}, \
    {text:"Requires 30 mana",italic:false,color:"red"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Wooden Shovel
give @s minecraft:wooden_shovel[ \
  minecraft:enchantments={ \
    "minecraft:silk_touch":1 \
  } \
]
# Super Fertilizer
give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:3106}, \
  minecraft:item_model="ogvz:super_fertilizer", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Super Fertilizer",color:"green"}, \
  minecraft:lore=[ \
    {text:"Use on a grass block.",color:"blue"}, \
    {text:"Allows flowers to grow in any",color:"blue"}, \
    {text:"biome.",color:"blue"}, \
    {text:"Single-use",italic:false,color:"red"}, \
    {text:"Active Item",italic:false,color:"green"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
# Mud Bricks x128
give @s minecraft:mud_bricks 64
give @s minecraft:mud_bricks 64
# Grass Block x20
give @s minecraft:grass_block 20
# Chest x2
give @s minecraft:chest 2
# Oak Sign x3
give @s minecraft:oak_sign 3
# Bone x16
give @s minecraft:bone[ \
  minecraft:lore=[ \
    {text:"Give to the tailor.",color:"blue"}, \
    {text:"Craft into bone meal.",color:"blue"} \
  ] \
] 16
# Legendary Book
execute as @s at @s run function ogvz:give/other/legendary_book

# Display a message on how to play as the tailor.
tellraw @s [ \
  "", \
  {text:"\u1110\u1111\u1112\n",font:"ogvz:custom"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You are a ",color:"yellow"}, \
  {text:"Tailor",bold:true,color:"blue"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Your job is to make ",color:"yellow"}, \
  {text:"Armor",color:"gold"}, \
  {text:" and ",color:"yellow"}, \
  {text:"Shields",color:"gold"}, \
  {text:" for the dwarves.\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"Begin by using ",color:"yellow"}, \
  {text:"Bone Meal",color:"gold"}, \
  {text:" to get ",color:"yellow"}, \
  {text:"Flowers",color:"gold"}, \
  {text:", then\n",color:"yellow"}, \
  {text:"\uF00D",font:"ogvz:custom"}, \
  {text:"craft them into ",color:"yellow"}, \
  {text:"Dye",color:"gold"}, \
  {text:".\n",color:"yellow"}, \
  {text:"▶ ",bold:true,color:"gold"}, \
  {text:"You can get more ",color:"yellow"}, \
  {text:"Bones",color:"gold"}, \
  {text:" from the ",color:"yellow"}, \
  {text:"Alchemist",color:"blue"}, \
  {text:".",color:"yellow"} \
]

# Play a sound and create particles.
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
particle minecraft:happy_villager ~ ~1 ~ 0.1 0.5 0.1 0.01 10

# Display a message about the selected doom event.
function ogvz:misc/doom_event_message
