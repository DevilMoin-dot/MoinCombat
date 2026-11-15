# Check if @s mc_id matches any entry in combat_loggers storage list
# In Minecraft commands, we can check if data storage moincombat:data combat_loggers contains #cur_id using macro or a simple iteration.
# Even simpler: we can use a macro function or check each index, or use data modify / data remove!
# Wait! Can we check storage containment easily?
# In 1.21+, `data modify storage moincombat:temp test set value 0` + `execute store result storage moincombat:temp test int 1 run scoreboard players get #cur_id mc_const`
# Then check if `storage moincombat:data combat_loggers` contains that value using a macro or data test!
# Wait, macro functions are super clean in 1.21+:
# Let's create `punish_rejoin.mcfunction` with `# ` macro argument!
