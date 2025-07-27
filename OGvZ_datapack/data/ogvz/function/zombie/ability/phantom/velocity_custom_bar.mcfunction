#> Description: Show the velocity custom bar.

# Store the player's Motion data value into a xyz vector.
data modify storage ogvz:vector xyz set from entity @s Motion

# Seperate the vector into x, y, z components.
execute store result storage ogvz:vector x float 1 run data get storage ogvz:vector xyz[0] 1000
execute store result storage ogvz:vector y float 1 run data get storage ogvz:vector xyz[1] 1000
execute store result storage ogvz:vector z float 1 run data get storage ogvz:vector xyz[2] 1000

# Get euclidean norm of the vector.
function ogvz:macro/euclidean_norm with storage ogvz:vector

# Create a temporary scoreboard and store the euclidean norm into it.
scoreboard objectives add temp.velocity dummy
execute store result score @s temp.velocity run data get storage ogvz:euclidean norm

# Create temporary scoreboards.
scoreboard objectives add temp.custom_bar_value dummy
scoreboard objectives add temp.max_value dummy

# The custom bar is 69 pixels wide from the inside.
scoreboard players set @s temp.custom_bar_value 69

# Set the maximum velocity.
# If you have changed the max velocity, you also have to change this to that value.
scoreboard players set @s temp.max_value 2000

# Calculate the custom bar fullness.
# This can be represented as: custom bar width * current value / max value
scoreboard players operation @s temp.custom_bar_value *= @s temp.velocity
scoreboard players operation @s temp.custom_bar_value /= @s temp.max_value

# Display the custom bar in the actionbar.
title @s[scores={temp.custom_bar_value=..0} ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2200"}
title @s[scores={temp.custom_bar_value=1}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2201"}
title @s[scores={temp.custom_bar_value=2}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2202"}
title @s[scores={temp.custom_bar_value=3}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2203"}
title @s[scores={temp.custom_bar_value=4}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2204"}
title @s[scores={temp.custom_bar_value=5}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2205"}
title @s[scores={temp.custom_bar_value=6}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2206"}
title @s[scores={temp.custom_bar_value=7}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2207"}
title @s[scores={temp.custom_bar_value=8}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2208"}
title @s[scores={temp.custom_bar_value=9}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2209"}
title @s[scores={temp.custom_bar_value=10}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2210"}
title @s[scores={temp.custom_bar_value=11}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2211"}
title @s[scores={temp.custom_bar_value=12}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2212"}
title @s[scores={temp.custom_bar_value=13}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2213"}
title @s[scores={temp.custom_bar_value=14}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2214"}
title @s[scores={temp.custom_bar_value=15}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2215"}
title @s[scores={temp.custom_bar_value=16}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2216"}
title @s[scores={temp.custom_bar_value=17}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2217"}
title @s[scores={temp.custom_bar_value=18}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2218"}
title @s[scores={temp.custom_bar_value=19}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2219"}
title @s[scores={temp.custom_bar_value=20}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2220"}
title @s[scores={temp.custom_bar_value=21}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2221"}
title @s[scores={temp.custom_bar_value=22}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2222"}
title @s[scores={temp.custom_bar_value=23}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2223"}
title @s[scores={temp.custom_bar_value=24}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2224"}
title @s[scores={temp.custom_bar_value=25}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2225"}
title @s[scores={temp.custom_bar_value=26}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2226"}
title @s[scores={temp.custom_bar_value=27}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2227"}
title @s[scores={temp.custom_bar_value=28}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2228"}
title @s[scores={temp.custom_bar_value=29}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2229"}
title @s[scores={temp.custom_bar_value=30}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2230"}
title @s[scores={temp.custom_bar_value=31}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2231"}
title @s[scores={temp.custom_bar_value=32}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2232"}
title @s[scores={temp.custom_bar_value=33}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2233"}
title @s[scores={temp.custom_bar_value=34}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2234"}
title @s[scores={temp.custom_bar_value=35}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2235"}
title @s[scores={temp.custom_bar_value=36}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2236"}
title @s[scores={temp.custom_bar_value=37}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2237"}
title @s[scores={temp.custom_bar_value=38}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2238"}
title @s[scores={temp.custom_bar_value=39}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2239"}
title @s[scores={temp.custom_bar_value=40}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2240"}
title @s[scores={temp.custom_bar_value=41}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2241"}
title @s[scores={temp.custom_bar_value=42}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2242"}
title @s[scores={temp.custom_bar_value=43}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2243"}
title @s[scores={temp.custom_bar_value=44}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2244"}
title @s[scores={temp.custom_bar_value=45}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2245"}
title @s[scores={temp.custom_bar_value=46}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2246"}
title @s[scores={temp.custom_bar_value=47}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2247"}
title @s[scores={temp.custom_bar_value=48}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2248"}
title @s[scores={temp.custom_bar_value=49}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2249"}
title @s[scores={temp.custom_bar_value=50}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2250"}
title @s[scores={temp.custom_bar_value=51}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2251"}
title @s[scores={temp.custom_bar_value=52}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2252"}
title @s[scores={temp.custom_bar_value=53}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2253"}
title @s[scores={temp.custom_bar_value=54}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2254"}
title @s[scores={temp.custom_bar_value=55}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2255"}
title @s[scores={temp.custom_bar_value=56}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2256"}
title @s[scores={temp.custom_bar_value=57}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2257"}
title @s[scores={temp.custom_bar_value=58}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2258"}
title @s[scores={temp.custom_bar_value=59}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2259"}
title @s[scores={temp.custom_bar_value=60}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2260"}
title @s[scores={temp.custom_bar_value=61}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2261"}
title @s[scores={temp.custom_bar_value=62}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2262"}
title @s[scores={temp.custom_bar_value=63}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2263"}
title @s[scores={temp.custom_bar_value=64}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2264"}
title @s[scores={temp.custom_bar_value=65}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2265"}
title @s[scores={temp.custom_bar_value=66}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2266"}
title @s[scores={temp.custom_bar_value=67}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2267"}
title @s[scores={temp.custom_bar_value=68}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2268"}
title @s[scores={temp.custom_bar_value=69..}] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1271\u2269"}

# Remove temporary scoreboards.
scoreboard objectives remove temp.velocity
scoreboard objectives remove temp.custom_bar_value
scoreboard objectives remove temp.max_value
