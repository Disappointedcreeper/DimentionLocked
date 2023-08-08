tellraw @a {"text": "Loaded Only One World datapack! Have fun in the overworld... Forever!"}
scoreboard objectives add int dummy "int"
scoreboard players reset maxrng int
scoreboard players add rng int 0
scoreboard players add maxrng int 10
scoreboard players reset maxrng2 int
scoreboard players add rng2 int 0
scoreboard players add maxrng2 int 15
execute if score rng int >= maxrng int run scoreboard players set rng int 0
scoreboard objectives add daycheck dummy "daycheck"
scoreboard players add daycheck daycheck 0
scoreboard players add daycheck nightstarts 0
scoreboard players set nightstarts daycheck 12542