#> Description: Gives the dragon warrior spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2010}, \
  minecraft:item_model="ogvz:disc_dragon_warrior", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Dragon Warrior",color:"blue"}, \
  minecraft:lore=[ \
    {text:"Slayer of the Ender Dragon.",color:"blue"} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
