#> Description: Show the invisibility custom bar.

# Create temporary scoreboards.
scoreboard objectives add temp.custom_bar_value dummy
scoreboard objectives add temp.max_value dummy

# The custom bar is 69 pixels wide from the inside.
scoreboard players set @s temp.custom_bar_value 69

# Set the maximum invisibility charge.
# If you have changed the max invisibility charge, you also have to change this to that value.
# Decremented by 1 to show the bar full before it's hidden.
scoreboard players set @s temp.max_value 1199

# Calculate the custom bar fullness.
# This can be represented as: custom bar width * current value / max value
scoreboard players operation @s temp.custom_bar_value *= @s ogvz.chillager.invisibility.duration
scoreboard players operation @s temp.custom_bar_value /= @s temp.max_value

# Display the custom bar in the actionbar.
title @s[scores={temp.custom_bar_value=0}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2300"}
title @s[scores={temp.custom_bar_value=1}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2301"}
title @s[scores={temp.custom_bar_value=2}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2302"}
title @s[scores={temp.custom_bar_value=3}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2303"}
title @s[scores={temp.custom_bar_value=4}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2304"}
title @s[scores={temp.custom_bar_value=5}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2305"}
title @s[scores={temp.custom_bar_value=6}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2306"}
title @s[scores={temp.custom_bar_value=7}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2307"}
title @s[scores={temp.custom_bar_value=8}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2308"}
title @s[scores={temp.custom_bar_value=9}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2309"}
title @s[scores={temp.custom_bar_value=10}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2310"}
title @s[scores={temp.custom_bar_value=11}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2311"}
title @s[scores={temp.custom_bar_value=12}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2312"}
title @s[scores={temp.custom_bar_value=13}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2313"}
title @s[scores={temp.custom_bar_value=14}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2314"}
title @s[scores={temp.custom_bar_value=15}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2315"}
title @s[scores={temp.custom_bar_value=16}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2316"}
title @s[scores={temp.custom_bar_value=17}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2317"}
title @s[scores={temp.custom_bar_value=18}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2318"}
title @s[scores={temp.custom_bar_value=19}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2319"}
title @s[scores={temp.custom_bar_value=20}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2320"}
title @s[scores={temp.custom_bar_value=21}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2321"}
title @s[scores={temp.custom_bar_value=22}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2322"}
title @s[scores={temp.custom_bar_value=23}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2323"}
title @s[scores={temp.custom_bar_value=24}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2324"}
title @s[scores={temp.custom_bar_value=25}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2325"}
title @s[scores={temp.custom_bar_value=26}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2326"}
title @s[scores={temp.custom_bar_value=27}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2327"}
title @s[scores={temp.custom_bar_value=28}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2328"}
title @s[scores={temp.custom_bar_value=29}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2329"}
title @s[scores={temp.custom_bar_value=30}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2330"}
title @s[scores={temp.custom_bar_value=31}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2331"}
title @s[scores={temp.custom_bar_value=32}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2332"}
title @s[scores={temp.custom_bar_value=33}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2333"}
title @s[scores={temp.custom_bar_value=34}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2334"}
title @s[scores={temp.custom_bar_value=35}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2335"}
title @s[scores={temp.custom_bar_value=36}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2336"}
title @s[scores={temp.custom_bar_value=37}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2337"}
title @s[scores={temp.custom_bar_value=38}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2338"}
title @s[scores={temp.custom_bar_value=39}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2339"}
title @s[scores={temp.custom_bar_value=40}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2340"}
title @s[scores={temp.custom_bar_value=41}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2341"}
title @s[scores={temp.custom_bar_value=42}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2342"}
title @s[scores={temp.custom_bar_value=43}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2343"}
title @s[scores={temp.custom_bar_value=44}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2344"}
title @s[scores={temp.custom_bar_value=45}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2345"}
title @s[scores={temp.custom_bar_value=46}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2346"}
title @s[scores={temp.custom_bar_value=47}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2347"}
title @s[scores={temp.custom_bar_value=48}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2348"}
title @s[scores={temp.custom_bar_value=49}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2349"}
title @s[scores={temp.custom_bar_value=50}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2350"}
title @s[scores={temp.custom_bar_value=51}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2351"}
title @s[scores={temp.custom_bar_value=52}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2352"}
title @s[scores={temp.custom_bar_value=53}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2353"}
title @s[scores={temp.custom_bar_value=54}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2354"}
title @s[scores={temp.custom_bar_value=55}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2355"}
title @s[scores={temp.custom_bar_value=56}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2356"}
title @s[scores={temp.custom_bar_value=57}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2357"}
title @s[scores={temp.custom_bar_value=58}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2358"}
title @s[scores={temp.custom_bar_value=59}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2359"}
title @s[scores={temp.custom_bar_value=60}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2360"}
title @s[scores={temp.custom_bar_value=61}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2361"}
title @s[scores={temp.custom_bar_value=62}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2362"}
title @s[scores={temp.custom_bar_value=63}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2363"}
title @s[scores={temp.custom_bar_value=64}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2364"}
title @s[scores={temp.custom_bar_value=65}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2365"}
title @s[scores={temp.custom_bar_value=66}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2366"}
title @s[scores={temp.custom_bar_value=67}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2367"}
title @s[scores={temp.custom_bar_value=68}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2368"}
title @s[scores={temp.custom_bar_value=69..}] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1251\u2369"}

# Remove temporary scoreboards.
scoreboard objectives remove temp.custom_bar_value
scoreboard objectives remove temp.max_value
