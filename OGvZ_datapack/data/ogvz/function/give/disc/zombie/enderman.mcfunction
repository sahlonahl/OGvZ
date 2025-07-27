#> Description: Gives the enderman spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2160}, \
  minecraft:item_model="ogvz:disc_enderman", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Enderman",color:"dark_purple"}, \
  minecraft:lore=[ \
    {text:"Opens a portal for other zombies",color:"blue"}, \
    {text:"to teleport to.",color:"blue"}, \
    [ \
      {text:"ATK: ",color:"red",italic:false}, \
      {text:"⭐",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"DEF: ",color:"red",italic:false}, \
      {text:"⭐⭐",color:"#FCA854",italic:false}, \
      {text:"⭐⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"MOV: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐",color:"yellow",italic:false}, \
      {text:"⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"UTL: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐⭐",color:"aqua",italic:false}, \
      {text:"",color:"gray",italic:false} \
    ], \
    {text:"Support Class",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
