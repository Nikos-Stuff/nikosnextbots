execute at @e[type=minecraft:text_display,tag=!] unless entity @e[tag=nextbot,distance=..2.3] run kill @e[type=minecraft:text_display,distance=..2.2,limit=1,tag=!dep_tag,tag=!button_tag,tag=!preview_1,tag=!preview_2,tag=!preview_3]
execute at @e[type=minecraft:item_display,tag=!] unless entity @e[tag=nextbot,distance=..2.3] run kill @e[type=minecraft:item_display,distance=..2.2,limit=1,tag=!spawn_marker,tag=!bonus,tag=!cosmetic]
execute at @e[type=!player,tag=nextbot] unless entity @e[type=minecraft:text_display,distance=..3.5] run kill @e[limit=1,distance=..1.1,sort=nearest,type=zombie]
execute at @e[type=!player,tag=nextbot] unless entity @e[type=minecraft:text_display,distance=..3.5] run kill @e[limit=1,distance=..1.1,sort=nearest,type=minecraft:spider]