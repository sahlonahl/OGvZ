#> Description: Gives the obsidian skull to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:9002}, \
  minecraft:item_name={text:"Obsidian Skull",color:"light_purple"}, \
  minecraft:item_model="ogvz:obsidian_skull", \
  minecraft:lore=[ \
    {text:"Teleport to a different zombie",color:"blue"}, \
    {text:"spawn.",color:"blue"}, \
    {text:"You will lose this ability once",color:"blue"}, \
    {text:"you leave zombie spawn.",color:"blue"}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
