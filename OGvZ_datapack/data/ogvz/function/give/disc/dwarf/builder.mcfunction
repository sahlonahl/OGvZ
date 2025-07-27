#> Description: Gives the builder spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2000}, \
  minecraft:item_model="ogvz:disc_builder", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Builder",color:"green"}, \
  minecraft:lore=[ \
    {text:"Tasked with building the keep.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
