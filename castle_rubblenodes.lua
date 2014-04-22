--RUBBLE
minetest.register_craft({
	output = "castle:rubblerubble",
	recipe = {
		{"castle:rubble"},
	}
})
minetest.register_node("castle:rubblerubble",{
	drawtype="nodebox",
	description = "Rubble Castel Rubble",
	paramtype = "light",
		tiles = {"castle_rubble.png"},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.15625,-0.5,-0.375,0.28125,-0.125,0},
			{0.03125,-0.5,-0.25,0.46875,-0.125,0.125},
			{-0.375,-0.5,-0.0625,0,-0.125,0.3125},
			{-0.5,-0.5,-0.5,-0.125,-0.125,-0.125},
			{0,-0.3125,-0.25,0.3125,0.0625,0.125},
			{-0.125,-0.46875,-0.203125,0.125,0.21875,0.078125},
			{0.15625,-0.0625,-0.1875,0.34375,0.1875,0.0625},
			{0.15625,-0.5,-0.34375,0.34375,-0.3125,-0.15625},
			{-0.21875,-0.5,-0.4375,-0.03125,0.0625,-0.1875},
			{-0.46875,-0.5,0.21875,-0.28125,-0.3125,0.40625},
			{0.21875,-0.21875,-0.28125,0.40625,-0.03125,-0.09375},
		},
		selection_box={
			{-0.15625,-0.5,-0.375,0.28125,-0.125,0},
			{0.03125,-0.5,-0.25,0.46875,-0.125,0.125},
			{-0.375,-0.5,-0.0625,0,-0.125,0.3125},
			{-0.5,-0.5,-0.5,-0.125,-0.125,-0.125},
			{0,-0.3125,-0.25,0.3125,0.0625,0.125},
			{-0.125,-0.46875,-0.203125,0.125,0.21875,0.078125},
			{0.15625,-0.0625,-0.1875,0.34375,0.1875,0.0625},
			{0.15625,-0.5,-0.34375,0.34375,-0.3125,-0.15625},
			{-0.21875,-0.5,-0.4375,-0.03125,0.0625,-0.1875},
			{-0.46875,-0.5,0.21875,-0.28125,-0.3125,0.40625},
			{0.21875,-0.21875,-0.28125,0.40625,-0.03125,-0.09375},
		},},
	groups = {crumbly=3,falling_node=1},
	sounds = default.node_sound_dirt_defaults({
		footstep = {name="default_gravel_footstep", gain=0.5},
		dug = {name="default_gravel_footstep", gain=1.0},
		}),
	})
