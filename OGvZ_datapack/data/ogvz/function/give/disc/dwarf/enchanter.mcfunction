#> Description: Gives the enchanter spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2005}, \
  minecraft:item_model="ogvz:disc_enchanter", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Enchanter",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Tasked with enchanting weapons,",color:"blue"}, \
    {text:"tools and armor.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
