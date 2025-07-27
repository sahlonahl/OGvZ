#> Description: Gives the tailor spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2002}, \
  minecraft:item_model="ogvz:disc_tailor", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Tailor",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Tasked with creating armor and",color:"blue"}, \
    {text:"shields.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
