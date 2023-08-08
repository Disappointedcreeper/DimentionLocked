execute at @a run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace nether_portal
execute at @a run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace end_portal
execute in minecraft:the_nether as @a[x=0] run damage @s 99999 minecraft:outside_border
execute in minecraft:the_end as @a[x=0] run damage @s 99999 minecraft:outside_border
execute if score rng int < maxrng int run scoreboard players add rng int 1
execute if score rng int >= maxrng int run scoreboard players set rng int 0
execute if score rng2 int < maxrng2 int run scoreboard players add rng2 int 1
execute if score rng2 int >= maxrng2 int run scoreboard players set rng2 int 0
execute as @e[type=wandering_trader, tag=!changed] run function only_one_world:wanderertrades
execute as @e[type=villager, tag=!changed] if data entity @s {VillagerData:{profession:"minecraft:cleric", level:2}} run function only_one_world:clericsellsblaze
execute as @e[type=villager, tag=!changed] if data entity @s {VillagerData:{profession:"minecraft:mason", level:5}} run function only_one_world:masonsellsquartz
execute store result score daycheck daycheck run time query daytime
execute if score daycheck daycheck < nightstarts daycheck run function only_one_world:phantomtoghast
execute as @e[type=slime, nbt=!{Fire:-1s}] run function only_one_world:slimetomagma