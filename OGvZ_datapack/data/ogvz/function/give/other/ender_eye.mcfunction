#> Description: Gives the ender eye to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:9003}, \
  minecraft:item_name={text:"Ender Eye",color:"light_purple"}, \
  minecraft:item_model="ogvz:ender_eye", \
  minecraft:lore=[ \
    {text:"Teleport to the ender portal.",color:"blue"}, \
    {text:"Teleportation takes time, unless",color:"blue"}, \
    {text:"you are near zombie spawn.",color:"blue"}, \
    {text:"You won't be able to move during",color:"blue"}, \
    {text:"the process and you will be",color:"blue"}, \
    {text:"interrupted if you take damage.",color:"blue"}, \
    {text:"You can manually interrupt the",color:"blue"}, \
    {text:"ability by using it again.",color:"blue"}, \
    {text:"15 second cooldown",color:"red",italic:false}, \
    {text:"Active Ability",color:"green",italic:false} \
  ], \
  minecraft:unbreakable={}, \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
