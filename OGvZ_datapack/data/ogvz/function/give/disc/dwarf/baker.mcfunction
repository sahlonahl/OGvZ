#> Description: Gives the baker spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2003}, \
  minecraft:item_model="ogvz:disc_baker", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Baker",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Tasked with baking food.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
