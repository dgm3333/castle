-- Removed
--    {"cobble", "Cobble", "default_cobble", "default:cobble"},
--    {"sandstonebrick", "Sandstone Brick", "default_sandstone_brick", "default:sandstone_brick"},
--    {"sandstone", "Sandstone", "default_sandstone", "default:sandstone"},
--    {"desertstonebrick", "Desert Stone Brick", "default_desert_stone_brick", "default:desert_stonebrick"},
--    {"desertstone", "Desert Stone", "default_desert_stone", "default:desert_stone"},
--    {"stonebrick", "Stonebrick", "default_stone_brick", "default:stonebrick"},
--    {"stone", "Stone", "default_stone", "default:stone"},

local hole = {}

hole.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
}

for _, row in ipairs(hole.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]
	-- Node Definition
	minetest.register_node("castle:hole_"..name, {
	    drawtype = "nodebox",
		description = desc.." Murder Hole",
		tiles = {tile},
		groups = {cracky=3},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-8/16,-8/16,-8/16,-4/16,8/16,8/16}, 
			{4/16,-8/16,-8/16,8/16,8/16,8/16}, 
			{-4/16,-8/16,-8/16,4/16,8/16,-4/16}, 
			{-4/16,-8/16,8/16,4/16,8/16,4/16}, 
		
		},
	},
	})
	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:hole_"..name.." 4",
			recipe = {
			{"",craft_material, "" },
			{craft_material,"", craft_material},
			{"",craft_material, ""} },
		})
	end
end

