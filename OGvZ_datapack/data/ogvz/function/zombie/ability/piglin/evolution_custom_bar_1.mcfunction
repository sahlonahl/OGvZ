#> Description: Show the evolution custom bar with highlighted arrow.

# Create temporary scoreboards.
scoreboard objectives add temp.custom_bar_value dummy
scoreboard objectives add temp.max_value dummy

# The custom bar is 69 pixels wide from the inside.
scoreboard players set @s temp.custom_bar_value 69

# Set the maximum experience.
# If you have changed the max experience, you also have to change this to that value.
# Decremented by 1 to show the bar full before it's hidden.
scoreboard players set @s temp.max_value 99

# Calculate the custom bar fullness.
# This can be represented as: custom bar width * current value / max value
scoreboard players operation @s temp.custom_bar_value *= @s ogvz.piglin.evolution.progress
scoreboard players operation @s temp.custom_bar_value /= @s temp.max_value

# Display the custom bar in the actionbar.
title @s[scores={temp.custom_bar_value=0}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2000"}
title @s[scores={temp.custom_bar_value=1}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2001"}
title @s[scores={temp.custom_bar_value=2}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2002"}
title @s[scores={temp.custom_bar_value=3}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2003"}
title @s[scores={temp.custom_bar_value=4}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2004"}
title @s[scores={temp.custom_bar_value=5}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2005"}
title @s[scores={temp.custom_bar_value=6}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2006"}
title @s[scores={temp.custom_bar_value=7}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2007"}
title @s[scores={temp.custom_bar_value=8}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2008"}
title @s[scores={temp.custom_bar_value=9}   ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2009"}
title @s[scores={temp.custom_bar_value=10}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2010"}
title @s[scores={temp.custom_bar_value=11}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2011"}
title @s[scores={temp.custom_bar_value=12}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2012"}
title @s[scores={temp.custom_bar_value=13}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2013"}
title @s[scores={temp.custom_bar_value=14}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2014"}
title @s[scores={temp.custom_bar_value=15}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2015"}
title @s[scores={temp.custom_bar_value=16}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2016"}
title @s[scores={temp.custom_bar_value=17}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2017"}
title @s[scores={temp.custom_bar_value=18}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2018"}
title @s[scores={temp.custom_bar_value=19}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2019"}
title @s[scores={temp.custom_bar_value=20}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2020"}
title @s[scores={temp.custom_bar_value=21}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2021"}
title @s[scores={temp.custom_bar_value=22}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2022"}
title @s[scores={temp.custom_bar_value=23}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2023"}
title @s[scores={temp.custom_bar_value=24}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2024"}
title @s[scores={temp.custom_bar_value=25}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2025"}
title @s[scores={temp.custom_bar_value=26}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2026"}
title @s[scores={temp.custom_bar_value=27}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2027"}
title @s[scores={temp.custom_bar_value=28}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2028"}
title @s[scores={temp.custom_bar_value=29}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2029"}
title @s[scores={temp.custom_bar_value=30}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2030"}
title @s[scores={temp.custom_bar_value=31}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2031"}
title @s[scores={temp.custom_bar_value=32}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2032"}
title @s[scores={temp.custom_bar_value=33}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2033"}
title @s[scores={temp.custom_bar_value=34}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2034"}
title @s[scores={temp.custom_bar_value=35}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2035"}
title @s[scores={temp.custom_bar_value=36}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2036"}
title @s[scores={temp.custom_bar_value=37}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2037"}
title @s[scores={temp.custom_bar_value=38}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2038"}
title @s[scores={temp.custom_bar_value=39}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2039"}
title @s[scores={temp.custom_bar_value=40}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2040"}
title @s[scores={temp.custom_bar_value=41}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2041"}
title @s[scores={temp.custom_bar_value=42}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2042"}
title @s[scores={temp.custom_bar_value=43}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2043"}
title @s[scores={temp.custom_bar_value=44}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2044"}
title @s[scores={temp.custom_bar_value=45}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2045"}
title @s[scores={temp.custom_bar_value=46}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2046"}
title @s[scores={temp.custom_bar_value=47}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2047"}
title @s[scores={temp.custom_bar_value=48}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2048"}
title @s[scores={temp.custom_bar_value=49}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2049"}
title @s[scores={temp.custom_bar_value=50}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2050"}
title @s[scores={temp.custom_bar_value=51}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2051"}
title @s[scores={temp.custom_bar_value=52}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2052"}
title @s[scores={temp.custom_bar_value=53}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2053"}
title @s[scores={temp.custom_bar_value=54}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2054"}
title @s[scores={temp.custom_bar_value=55}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2055"}
title @s[scores={temp.custom_bar_value=56}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2056"}
title @s[scores={temp.custom_bar_value=57}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2057"}
title @s[scores={temp.custom_bar_value=58}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2058"}
title @s[scores={temp.custom_bar_value=59}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2059"}
title @s[scores={temp.custom_bar_value=60}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2060"}
title @s[scores={temp.custom_bar_value=61}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2061"}
title @s[scores={temp.custom_bar_value=62}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2062"}
title @s[scores={temp.custom_bar_value=63}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2063"}
title @s[scores={temp.custom_bar_value=64}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2064"}
title @s[scores={temp.custom_bar_value=65}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2065"}
title @s[scores={temp.custom_bar_value=66}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2066"}
title @s[scores={temp.custom_bar_value=67}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2067"}
title @s[scores={temp.custom_bar_value=68}  ] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2068"}
title @s[scores={temp.custom_bar_value=69..}] actionbar {font:"ogvz:custom",shadow_color:0,text:"\uF164\u1231\u2069"}

# Remove temporary scoreboards.
scoreboard objectives remove temp.custom_bar_value
scoreboard objectives remove temp.max_value
