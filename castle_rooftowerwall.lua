local rooftowerwall = {}

rooftowerwall.types = {
	{"stonewall","StoneWall","castle_stonewall.png","castle:stonewall"},
	{"dungeon","DungeonWall","castle_dungeon_stone.png","castle:dungeonwall"},
	{"cornerwall","CornerWall","castle_cornwall.png","castle:cornerwall"},
	{"pavingstone","Paving Stone","castle_pavement_brick.png","castle:pavement"},
--	{"bookshelf","Bookshelf","default_bookshelf.png","default:bookshelf"},
--	{"dirt","Dirt","default_dirt.png","default:dirt"},
--	{"stone","Stone","default_stone.png","default:stone"},
--	{"cobble","Cobble","default_cobble.png","default:cobble"},
--	{"sand","Sand","default_sand.png","default:sand"},
--	{"desert_sand","Desert Sand","default_desert_sand.png","default:desert_sand"},
--	{"desert_stone","Desert Stone","default_desert_stone.png","default:desert-stone"},
--	{"brick","Brick","default_brick.png","default:brick"},
--	{"steel","Steel","default_steel_block.png","default:steelblock"},
--	{"glass","Glass","default_glass.png","default:glass"},
--	{"stonebrick","Stone Brick","default_stone_brick.png","default:stonebrick"},
--	{"desert_stone_brick","Desert Stone Brick","default_desert_stone_brick.png","default:desertstonebrick"},
--	{"sand_stone_brick","Sand Stone Brick","default_sandstone_brick.png","default:sandstonebrick"},
--	{"tree","Tree","default_tree.png","default:tree"},
--	{"wood","Wood","default_wood.png","default:wood"},
--	{"sand_stone","Sand Stone","default_sandstone.png","default:sandstone"},
--	{"obsidian","Obsidian","default_obsidian.png","default:obsidian"},
--	{"gravel","Gravel","default_gravel.png","default:gravel"},
--	{"desertcobble","Desert Cobble","desert_cobble.png","castle:desert_cobble"},
}

for _, row in ipairs(rooftowerwall.types) do
	local name = row[1]
	local desc = row[2]
	local tile = row[3]
	local craft_material = row[4]

	-- Normal TowerWall Roof
	minetest.register_node("castle:" ..name.. "normaltowerwallroof", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.4375,-0.375,0.5}, --NodeBox1
			{-0.375,-0.5,-0.375,-0.3125,-0.375,0.5}, --NodeBox2
			{-0.25,-0.5,-0.25,-0.1875,-0.375,0.5}, --NodeBox3
			{-0.125,-0.5,-0.125,-0.0625,-0.375,0.5}, --NodeBox4
			{0,-0.5,0,0.0625,-0.375,0.5}, --NodeBox5
			{0.125,-0.5,0.125,0.1875,-0.375,0.5}, --NodeBox6
			{0.25,-0.5,0.25,0.3125,-0.375,0.5}, --NodeBox7
			{0.375,-0.5,0.375,0.443128,-0.375,0.5}, --NodeBox8
			{-0.5,-0.5,-0.375,-0.4375,-0.25,0.5}, --NodeBox9
			{-0.375,-0.5,-0.25,-0.3125,-0.25,0.5}, --NodeBox10
			{-0.25,-0.5,-0.125,-0.1875,-0.25,0.5}, --NodeBox11
			{-0.125,-0.5,0,-0.0625,-0.25,0.5}, --NodeBox12
			{0,-0.5,0.125,0.0625,-0.25,0.5}, --NodeBox13
			{0.125,-0.5,0.25,0.1875,-0.25,0.5}, --NodeBox14
			{0.25,-0.5,0.375,0.3125,-0.25,0.5}, --NodeBox15
			{-0.5,-0.5,-0.25,-0.4375,-0.125,0.5}, --NodeBox16
			{-0.375,-0.5,-0.125,-0.3125,-0.125,0.5}, --NodeBox17
			{-0.25,-0.5,0,-0.1875,-0.125,0.5}, --NodeBox18
			{-0.125,-0.5,0.125,-0.0625,-0.125,0.5}, --NodeBox19
			{0,-0.5,0.25,0.0625,-0.125,0.5}, --NodeBox20
			{0.125,-0.5,0.375,0.1875,-0.125,0.5}, --NodeBox21
			{-0.5,-0.5,-0.125,-0.4375,0,0.5}, --NodeBox23
			{-0.375,-0.5,0,-0.3125,0,0.5}, --NodeBox24
			{-0.25,-0.5,0.125,-0.1875,0,0.5}, --NodeBox25
			{-0.125,-0.5,0.25,-0.0625,0,0.5}, --NodeBox26
			{0,-0.5,0.375,0.0625,0,0.5}, --NodeBox27
			{-0.5,-0.5,0,-0.4375,0.125,0.5}, --NodeBox27-
			{-0.375,-0.5,0.125,-0.3125,0.125,0.5}, --NodeBox28
			{-0.25,-0.5,0.25,-0.1875,0.125,0.5}, --NodeBox29
			{-0.125,-0.5,0.375,-0.0625,0.125,0.5}, --NodeBox30
			{-0.5,-0.5,0.125,-0.4375,0.25,0.5}, --NodeBox31
			{-0.375,-0.5,0.25,-0.3125,0.25,0.5}, --NodeBox32
			{-0.25,-0.5,0.375,-0.1875,0.25,0.5}, --NodeBox33
			{-0.5,-0.5,0.25,-0.4375,0.375,0.5}, --NodeBox34
			{-0.375,-0.5,0.375,-0.3125,0.375,0.5}, --NodeBox35
			{-0.5,-0.5,0.375,-0.4375,0.5,0.5}, --NodeBox36
			{-0.4375,-0.5,-0.4375,-0.375,-0.375,0.5}, --NodeBox37--
			{-0.4375,-0.5,-0.3125,-0.375,-0.25,0.5}, --NodeBox38
			{-0.4375,-0.5,-0.1875,-0.375,-0.125,0.5}, --NodeBox39
			{-0.4375,-0.5,-0.0625,-0.375,0,0.5}, --NodeBox40
			{-0.4375,-0.5,0.0625,-0.375,0.125,0.5}, --NodeBox41
			{-0.4375,-0.5,0.1875,-0.375,0.25,0.5}, --NodeBox42
			{-0.4375,-0.5,0.3125,-0.375,0.375,0.5}, --NodeBox43
			{-0.4375,-0.5,0.4375,-0.375,0.5,0.5}, --NodeBox44
			{-0.3125,-0.5,-0.3125,-0.25,-0.375,0.5}, --NodeBox45
			{-0.375,-0.5,-0.125,-0.3125,-0.125,0.5}, --NodeBox46
			{-0.375,-0.5,0.25,-0.3125,0.25,0.5}, --NodeBox47
			{-0.3125,-0.5,-0.1875,-0.25,-0.25,0.5}, --NodeBox48--
			{-0.3125,-0.5,-0.0625,-0.25,-0.125,0.5}, --NodeBox49
			{-0.3125,-0.5,0.0625,-0.25,0,0.5}, --NodeBox50
			{-0.3125,-0.5,0.1875,-0.25,0.125,0.5}, --NodeBox51
			{-0.3125,-0.5,0.3125,-0.25,0.25,0.5}, --NodeBox52
			{-0.3125,-0.5,0.4375,-0.25,0.375,0.5}, --NodeBox53
			{-0.1875,-0.5,-0.1875,-0.125,-0.375,0.5}, --NodeBox54
			{-0.1875,-0.5,-0.0625,-0.125,-0.25,0.5}, --NodeBox55
			{-0.1875,-0.5,0.0625,-0.125,-0.125,0.5}, --NodeBox56
			{-0.1875,-0.5,0.1875,-0.125,0,0.5}, --NodeBox57
			{-0.1875,-0.5,0.3125,-0.125,0.125,0.5}, --NodeBox58
			{-0.1875,-0.5,0.4375,-0.125,0.25,0.5}, --NodeBox59
			{-0.0625,-0.5,0.4375,0,0.125,0.5}, --NodeBox60--
			{-0.0625,-0.5,0.3125,0,0,0.5}, --NodeBox61
			{-0.0625,-0.5,0.1875,0,-0.125,0.5}, --NodeBox62
			{-0.0625,-0.5,0.0625,0,-0.25,0.5}, --NodeBox63
			{-0.0625,-0.5,0.0625,0,-0.25,0.5}, --NodeBox64
			{-0.0625,-0.5,-0.0625,0,-0.375,0.5}, --NodeBox65
			{0.0625,-0.5,0.4375,0.125,0,0.5}, --NodeBox66--
			{0.0625,-0.5,0.3125,0.125,-0.125,0.5}, --NodeBox67
			{0.0625,-0.5,0.1875,0.125,-0.25,0.5}, --NodeBox68
			{0.0625,-0.5,0.0625,0.125,-0.375,0.5}, --NodeBox69
			{0.1875,-0.5,0.4375,0.25,-0.125,0.5}, --NodeBox70
			{0.1875,-0.5,0.3125,0.25,-0.25,0.5}, --NodeBox71
			{0.1875,-0.5,0.1875,0.25,-0.375,0.5}, --NodeBox72
			{0.3125,-0.5,0.4375,0.375,-0.25,0.5}, --NodeBox73--
			{0.3125,-0.5,0.3125,0.375,-0.375,0.5}, --NodeBox74
			{0.4375,-0.5,0.4375,0.5,-0.375,0.5}, --NodeBox75--
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "normaltowerwallroof 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end


	-- Normal TowerWall Roof Bis
	minetest.register_node("castle:" ..name.. "normaltowerwallroofbis", {
	    drawtype = "nodebox",
		description = desc.." Tower Wall Roof Bis",
		tiles = {tile},
		groups = {cracky=3,attached_node=0},
		sounds = default.node_sound_stone_defaults(),
	    paramtype = "light",
	    paramtype2 = "facedir",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5,-0.5,-0.5,-0.4375,0.5,-0.4375}, --NodeBox1
			{-0.4375,-0.5,-0.5,-0.375,0.5,-0.375}, --NodeBox2
			{-0.375,-0.5,-0.4375,-0.3125,0.5,-0.3125}, --NodeBox3
			{-0.3125,-0.5,-0.375,-0.25,0.5,-0.25}, --NodeBox4
			{-0.25,-0.5,-0.3125,-0.1875,0.5,-0.1875}, --NodeBox5
			{-0.1875,-0.5,-0.25,-0.125,0.5,-0.125}, --NodeBox6
			{-0.125,-0.5,-0.1875,-0.0625,0.5,-0.0625}, --NodeBox7
			{-0.0625,-0.5,-0.125,0,0.5,0}, --NodeBox8
			{0,-0.5,-0.0625,0.0625,0.5,0.0625}, --NodeBox9
			{0.0625,-0.5,0,0.125,0.5,0.125}, --NodeBox10
			{0.125,-0.5,0.0625,0.1875,0.5,0.1875}, --NodeBox11
			{0.1875,-0.5,0.125,0.25,0.5,0.25}, --NodeBox12
			{0.25,-0.5,0.1875,0.3125,0.5,0.3125}, --NodeBox13
			{0.3125,-0.5,0.25,0.375,0.5,0.375}, --NodeBox14
			{0.375,-0.5,0.3125,0.4375,0.5,0.4375}, --NodeBox15
			{0.4375,-0.5,0.375,0.5,0.5,0.5}, --NodeBox16
			{-0.375,-0.5,-0.5,-0.25,0.375,-0.4375}, --NodeBox17
			{-0.25,-0.5,-0.5,-0.125,0.25,-0.4375}, --NodeBox18
			{-0.125,-0.5,-0.5,0,0.125,-0.4375}, --NodeBox19
			{0,-0.5,-0.5,0.125,0,-0.4375}, --NodeBox20
			{0.125,-0.5,-0.5,0.25,-0.125,-0.4375}, --NodeBox21
			{0.25,-0.5,-0.5,0.375,-0.25,-0.4375}, --NodeBox22
			{0.375,-0.5,-0.5,0.5,-0.375,-0.375}, --NodeBox23
			{-0.3125,-0.5,-0.4375,-0.1875,0.375,-0.375}, --NodeBox24
			{-0.1875,-0.5,-0.4375,-0.0625,0.25,-0.375}, --NodeBox25
			{-0.0625,-0.5,-0.4375,0.0625,0.125,-0.375}, --NodeBox26
			{0.0625,-0.5,-0.4375,0.1875,0,-0.375}, --NodeBox27
			{0.1875,-0.5,-0.4375,0.3125,-0.125,-0.375}, --NodeBox28
			{0.4375,-0.5,-0.375,0.5,-0.25,-0.25}, --NodeBox29
			{0.4375,-0.5,-0.25,0.5,-0.125,-0.125}, --NodeBox30
			{0.4375,-0.5,-0.125,0.5,0,0}, --NodeBox31
			{0.4375,-0.5,0,0.5,0.125,0.125}, --NodeBox32
			{0.4375,-0.5,0.125,0.5,0.25,0.25}, --NodeBox33
			{0.4375,-0.5,0.25,0.5,0.375,0.375}, --NodeBox34
			{0.3125,-0.5,-0.4375,0.4375,-0.25,-0.3125}, --NodeBox35
			{0.25,-0.5,-0.375,0.375,-0.125,-0.25}, --NodeBox36
			{0.1875,-0.5,-0.3125,0.3125,0,-0.1875}, --NodeBox37
			{0.125,-0.5,-0.25,0.25,0.125,-0.125}, --NodeBox38
			{0.0625,-0.5,-0.1875,0.1875,0.25,-0.0625}, --NodeBox39
			{0,-0.5,-0.125,0.125,0.375,0}, --NodeBox40
			{0.125,-0.5,-0.375,0.25,0,-0.3125}, --NodeBox41
			{0,-0.5,-0.375,0.125,0.125,-0.3125}, --NodeBox42
			{0.0625,-0.5,-0.3125,0.1875,0.125,-0.25}, --NodeBox43
			{-0.125,-0.5,-0.375,0,0.25,-0.3125}, --NodeBox44
			{-0.25,-0.5,-0.375,-0.125,0.375,-0.3125}, --NodeBox45
			{-0.0625,-0.5,-0.3125,0.0625,0.25,-0.25}, --NodeBox46
			{-0.1875,-0.5,-0.3125,-0.0625,0.375,-0.25}, --NodeBox47
			{-0.125,-0.5,-0.25,0,0.375,-0.1875}, --NodeBox48
			{0,-0.5,-0.25,0.125,0.25,-0.1875}, --NodeBox49
			{-0.0625,-0.5,-0.1875,0.0625,0.375,-0.125}, --NodeBox50
			{0.375,-0.5,-0.3125,0.4375,-0.125,-0.1875}, --NodeBox51
			{0.375,-0.5,-0.1875,0.4375,0,-0.0625}, --NodeBox52
			{0.375,-0.5,-0.0625,0.4375,0.125,0.0625}, --NodeBox53
			{0.375,-0.5,0.0625,0.4375,0.25,0.1875}, --NodeBox54
			{0.375,-0.5,0.1875,0.4375,0.375,0.3125}, --NodeBox55
			{0.3125,-0.5,-0.25,0.375,0,-0.125}, --NodeBox56
			{0.3125,-0.5,-0.125,0.375,0.125,0}, --NodeBox57
			{0.3125,-0.5,0,0.375,0.25,0.125}, --NodeBox58
			{0.3125,-0.5,0.125,0.375,0.375,0.25}, --NodeBox59
			{0.125,-0.5,-0.0625,0.1875,0.375,0.0625}, --NodeBox60
			{0.1875,-0.5,0,0.25,0.375,0.125}, --NodeBox61
			{0.1875,-0.5,-0.125,0.25,0.25,0}, --NodeBox62
			{0.25,-0.5,0.0625,0.3125,0.375,0.1875}, --NodeBox63
			{0.25,-0.5,-0.0625,0.3125,0.25,0.0625}, --NodeBox64
			{0.25,-0.5,-0.1875,0.3125,0.125,-0.0625}, --NodeBox65
		},
	},
	})

	if craft_material then
		--Choose craft material
		minetest.register_craft({
			output = "castle:" ..name.. "normaltowerwallroofbis 4",
			recipe = {
			{"",craft_material,""},
			{"",craft_material,""},
			{craft_material,craft_material,craft_material} },
		})
	end
end
