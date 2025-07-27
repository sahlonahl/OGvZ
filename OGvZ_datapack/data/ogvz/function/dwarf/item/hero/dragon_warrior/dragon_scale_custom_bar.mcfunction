#> Description: Display the dragon scale custom bar.

scoreboard objectives add temp.custom_bar_value dummy
scoreboard objectives add temp.max_value dummy

# The custom bar is 69 pixels wide from the inside.
scoreboard players set @s temp.custom_bar_value 69

# Set the maximum damage.
# If you have changed the max damage, you also have to change this to that value.
scoreboard players set @s temp.max_value 300

# Calculate the custom bar fullness.
# This can be represented as: custom bar width * current value / max value
scoreboard players operation @s temp.custom_bar_value *= @s ogvz.dragon_warrior.dragon_scale.damage
scoreboard players operation @s temp.custom_bar_value /= @s temp.max_value

# Display the custom bar in the actionbar.
# The custom bar is inverted, showing as full when no damage has been taken.
title @s[scores={temp.custom_bar_value=0}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2169"}
title @s[scores={temp.custom_bar_value=1}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2168"}
title @s[scores={temp.custom_bar_value=2}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2167"}
title @s[scores={temp.custom_bar_value=3}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2166"}
title @s[scores={temp.custom_bar_value=4}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2165"}
title @s[scores={temp.custom_bar_value=5}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2164"}
title @s[scores={temp.custom_bar_value=6}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2163"}
title @s[scores={temp.custom_bar_value=7}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2162"}
title @s[scores={temp.custom_bar_value=8}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2161"}
title @s[scores={temp.custom_bar_value=9}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2160"}
title @s[scores={temp.custom_bar_value=10}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2159"}
title @s[scores={temp.custom_bar_value=11}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2158"}
title @s[scores={temp.custom_bar_value=12}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2157"}
title @s[scores={temp.custom_bar_value=13}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2156"}
title @s[scores={temp.custom_bar_value=14}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2155"}
title @s[scores={temp.custom_bar_value=15}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2154"}
title @s[scores={temp.custom_bar_value=16}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2153"}
title @s[scores={temp.custom_bar_value=17}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2152"}
title @s[scores={temp.custom_bar_value=18}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2151"}
title @s[scores={temp.custom_bar_value=19}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2150"}
title @s[scores={temp.custom_bar_value=20}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2149"}
title @s[scores={temp.custom_bar_value=21}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2148"}
title @s[scores={temp.custom_bar_value=22}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2147"}
title @s[scores={temp.custom_bar_value=23}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2146"}
title @s[scores={temp.custom_bar_value=24}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2145"}
title @s[scores={temp.custom_bar_value=25}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2144"}
title @s[scores={temp.custom_bar_value=26}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2143"}
title @s[scores={temp.custom_bar_value=27}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2142"}
title @s[scores={temp.custom_bar_value=28}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2141"}
title @s[scores={temp.custom_bar_value=29}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2140"}
title @s[scores={temp.custom_bar_value=30}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2139"}
title @s[scores={temp.custom_bar_value=31}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2138"}
title @s[scores={temp.custom_bar_value=32}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2137"}
title @s[scores={temp.custom_bar_value=33}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2136"}
title @s[scores={temp.custom_bar_value=34}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2135"}
title @s[scores={temp.custom_bar_value=35}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2134"}
title @s[scores={temp.custom_bar_value=36}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2133"}
title @s[scores={temp.custom_bar_value=37}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2132"}
title @s[scores={temp.custom_bar_value=38}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2131"}
title @s[scores={temp.custom_bar_value=39}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2130"}
title @s[scores={temp.custom_bar_value=40}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2129"}
title @s[scores={temp.custom_bar_value=41}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2128"}
title @s[scores={temp.custom_bar_value=42}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2127"}
title @s[scores={temp.custom_bar_value=43}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2126"}
title @s[scores={temp.custom_bar_value=44}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2125"}
title @s[scores={temp.custom_bar_value=45}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2124"}
title @s[scores={temp.custom_bar_value=46}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2123"}
title @s[scores={temp.custom_bar_value=47}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2122"}
title @s[scores={temp.custom_bar_value=48}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2121"}
title @s[scores={temp.custom_bar_value=49}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2120"}
title @s[scores={temp.custom_bar_value=50}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2119"}
title @s[scores={temp.custom_bar_value=51}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2118"}
title @s[scores={temp.custom_bar_value=52}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2117"}
title @s[scores={temp.custom_bar_value=53}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2116"}
title @s[scores={temp.custom_bar_value=54}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2115"}
title @s[scores={temp.custom_bar_value=55}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2114"}
title @s[scores={temp.custom_bar_value=56}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2113"}
title @s[scores={temp.custom_bar_value=57}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2112"}
title @s[scores={temp.custom_bar_value=58}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2111"}
title @s[scores={temp.custom_bar_value=59}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2110"}
title @s[scores={temp.custom_bar_value=60}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2109"}
title @s[scores={temp.custom_bar_value=61}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2108"}
title @s[scores={temp.custom_bar_value=62}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2107"}
title @s[scores={temp.custom_bar_value=63}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2106"}
title @s[scores={temp.custom_bar_value=64}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2105"}
title @s[scores={temp.custom_bar_value=65}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2104"}
title @s[scores={temp.custom_bar_value=66}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2103"}
title @s[scores={temp.custom_bar_value=67}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2102"}
title @s[scores={temp.custom_bar_value=68}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2101"}
title @s[scores={temp.custom_bar_value=69..}] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1201\u2100"}

# Remove temporary scoreboards.
scoreboard objectives remove temp.custom_bar_value
scoreboard objectives remove temp.max_value
