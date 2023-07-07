tag @s add changed
execute store result score rng int run loot spawn ~ ~ ~ loot namespace:rng
data modify entity @s Offers.Recipes prepend value {buy:{id:emerald,Count:2},sell:{id:nether_wart,Count:1},rewardExp:0b,maxUses:8}
