#> Description: Gives the wither warrior spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2011}, \
  minecraft:item_model="ogvz:disc_wither_warrior", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Wither Warrior",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Slayer of the Wither.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
