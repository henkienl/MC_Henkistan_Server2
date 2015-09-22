// Ore dictionary support
<ore:stoneDiorite>.add(<chisel:diorite>);
<ore:stoneBasalt>.add(<ProjRed|Exploration:projectred.exploration.stone:3>);
<ore:stoneBasaltBricks>.add(<ProjRed|Exploration:projectred.exploration.stone:4>);
<ore:stoneAndesite>.add(<chisel:andesite>);
<ore:stoneGranite>.add(<chisel:granite>);

// Add Botania variants to Chisel
mods.chisel.Groups.addVariation("andesite", <Botania:stone:0>);
mods.chisel.Groups.addVariation("diorite", <Botania:stone:2>);
mods.chisel.Groups.addVariation("granite", <Botania:stone:3>);

// Create a new Chisel-able material "basalt"
mods.chisel.Groups.addGroup("basalt");

for item in <ore:stoneBasalt>.items {
	mods.chisel.Groups.addVariation("basalt", item);
}

// Polished
mods.chisel.Groups.addVariation("basalt", <Botania:stone:5>);
mods.chisel.Groups.addVariation("basalt", <ganyssurface:basalt:1>);

// Brick
mods.chisel.Groups.addVariation("basalt", <Botania:stone:9>);
mods.chisel.Groups.addVariation("basalt", <ProjRed|Exploration:projectred.exploration.stone:4>);

// Chiseled
mods.chisel.Groups.addVariation("basalt", <Botania:stone:13>);

// Walls (ProjectRed)
recipes.remove(<ProjRed|Exploration:projectred.exploration.stonewalls:3>);
recipes.addShaped(<ProjRed|Exploration:projectred.exploration.stonewalls:3>, [[<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>], [<ore:stoneBasalt>, <ore:stoneBasalt>, <ore:stoneBasalt>], [null, null, null]]);

recipes.remove(<ProjRed|Exploration:projectred.exploration.stonewalls:4>);
recipes.addShaped(<ProjRed|Exploration:projectred.exploration.stonewalls:4>, [[<ore:stoneBasaltBricks>, <ore:stoneBasaltBricks>, <ore:stoneBasaltBricks>], [<ore:stoneBasaltBricks>, <ore:stoneBasaltBricks>, <ore:stoneBasaltBricks>], [null, null, null]]);

// Marble walls (ProjectRed)
recipes.remove(<ProjRed|Exploration:projectred.exploration.stonewalls:0>);
recipes.addShaped(<ProjRed|Exploration:projectred.exploration.stonewalls:0>, [[<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], [<ore:blockMarble>, <ore:blockMarble>, <ore:blockMarble>], [null, null, null]]);
