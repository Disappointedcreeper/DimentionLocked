execute at @a run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace nether_portal
execute at @a run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace end_portal
execute in minecraft:the_nether as @a[x=0] run damage @s 99999 minecraft:outside_border
execute in minecraft:the_end as @a[x=0] run damage @s 99999 minecraft:outside_border
execute as @e[type=wandering_trader, tag=!changed] run say changing trades
execute as @e[type=wandering_trader, tag=!changed] run function only_one_world:wanderertrades
