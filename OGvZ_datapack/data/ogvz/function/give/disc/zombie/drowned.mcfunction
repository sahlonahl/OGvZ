#> Description: Gives the drowned spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2103}, \
  minecraft:item_model="ogvz:disc_drowned", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Drowned",color:"red"}, \
  minecraft:lore=[ \
    {text:"Basic tank. Stronger with other",color:"blue"}, \
    {text:"drowned nearby.",color:"blue"}, \
    [ \
      {text:"ATK: ",color:"red",italic:false}, \
      {text:"⭐⭐",color:"#FCA854",italic:false}, \
      {text:"⭐⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"DEF: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"green",italic:false}, \
      {text:"⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"MOV: ",color:"red",italic:false}, \
      {text:"⭐⭐",color:"#FCA854",italic:false}, \
      {text:"⭐⭐⭐",color:"gray",italic:false} \
    ], \
    [ \
      {text:"UTL: ",color:"red",italic:false}, \
      {text:"⭐⭐",color:"#FCA854",italic:false}, \
      {text:"⭐⭐⭐",color:"gray",italic:false} \
    ], \
    {text:"Melee Combat Class",color:"green",italic:false} \
  ], \
  minecraft:tooltip_display={ \
    hidden_components:[ \
      "minecraft:unbreakable" \
    ] \
  } \
]
