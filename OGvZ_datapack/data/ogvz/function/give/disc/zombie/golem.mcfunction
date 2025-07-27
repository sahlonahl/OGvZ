#> Description: Gives the golem spawn disc to the player.

give @s minecraft:carrot_on_a_stick[ \
  minecraft:custom_data={active_id:2161}, \
  minecraft:item_model="ogvz:disc_golem", \
  minecraft:unbreakable={}, \
  minecraft:item_name={text:"Golem",color:"dark_purple"}, \
  minecraft:lore=[ \
    {text:"Obliterates dwarves with one",color:"blue"}, \
    {text:"punch. Raises the ground to",color:"blue"}, \
    {text:"create walls.",color:"blue"}, \
    [ \
      {text:"ATK: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐⭐",color:"aqua",italic:false}, \
      {text:"",color:"gray",italic:false} \
    ], \
    [ \
      {text:"DEF: ",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐⭐",color:"aqua",italic:false}, \
      {text:"",color:"gray",italic:false} \
    ], \
    [ \
      {text:"MOV: ",color:"red",italic:false}, \
      {text:"⭐",color:"red",italic:false}, \
      {text:"⭐⭐⭐⭐",color:"gray",italic:false} \
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
