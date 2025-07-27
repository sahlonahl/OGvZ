#> Description: Gives the assassin slayer spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2013}, \
  minecraft:item_model="ogvz:disc_assassin_slayer", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Assassin Slayer",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Slayer of the Assassin.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
