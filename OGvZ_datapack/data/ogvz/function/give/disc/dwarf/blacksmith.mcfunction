#> Description: Gives the blacksmith spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2001}, \
  minecraft:item_model="ogvz:disc_blacksmith", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Blacksmith",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Tasked with creating weapons and",color:"blue"}, \
    {text:"tools.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
