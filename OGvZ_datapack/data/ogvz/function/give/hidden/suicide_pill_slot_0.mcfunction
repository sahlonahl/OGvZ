#> Description: Places the suicide pill in slot 0 of the player.

item replace entity @s inventory.0 with minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:9001}, \
  minecraft:item_name={text:"Suicide Pill",color:"red"}, \
  minecraft:item_model="ogvz:suicide_pill", \
  minecraft:lore=[ \
    {text:"You die.",color:"blue"}, \
    {text:"Useful if you get stuck.",color:"blue"}, \
    {text:"Single-use",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
