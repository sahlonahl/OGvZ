#> Description: Creates bossbars used to display timers, shrine health and boss health.

# Boss timer
bossbar add ogvz:boss_timer "Time Remaining"
bossbar set ogvz:boss_timer max 36000
bossbar set ogvz:boss_timer style notched_10
bossbar set ogvz:boss_timer visible false

# Shrine Health
bossbar add ogvz:shrine_health {text:"\u1001",font:"ogvz:custom",shadow_color:0}
bossbar set ogvz:shrine_health color blue
bossbar set ogvz:shrine_health max 12
bossbar set ogvz:shrine_health style notched_12
bossbar set ogvz:shrine_health visible false

# Ender Dragon
bossbar add ogvz:ender_dragon_health {text:"\u1011",font:"ogvz:custom",shadow_color:0}
bossbar set ogvz:ender_dragon_health color pink
bossbar set ogvz:ender_dragon_health max 100
bossbar set ogvz:ender_dragon_health style progress
bossbar set ogvz:ender_dragon_health visible false

# Wither
bossbar add ogvz:wither_health {text:"\u1012",font:"ogvz:custom",shadow_color:0}
bossbar set ogvz:wither_health color purple
bossbar set ogvz:wither_health max 100
bossbar set ogvz:wither_health style progress
bossbar set ogvz:wither_health visible false

# Elder Guardian
bossbar add ogvz:elder_guardian_health {text:"\u1013",font:"ogvz:custom",shadow_color:0}
bossbar set ogvz:elder_guardian_health color blue
bossbar set ogvz:elder_guardian_health max 100
bossbar set ogvz:elder_guardian_health style progress
bossbar set ogvz:elder_guardian_health visible false

# Assasin
bossbar add ogvz:assassin_health {text:"\u1010",font:"ogvz:custom",shadow_color:0}
bossbar set ogvz:assassin_health color red
bossbar set ogvz:assassin_health max 100
bossbar set ogvz:assassin_health style progress
bossbar set ogvz:assassin_health visible false
