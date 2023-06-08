import crafttweaker.api.tag.MCTag;
import crafttweaker.api.ingredient.IIngredient;
import stdlib.List;
import crafttweaker.api.item.IItemStack;

var comfort = new List<IItemStack>();
comfort.add(<item:comforts:sleeping_bag_orange>);
comfort.add(<item:comforts:sleeping_bag_white>);
comfort.add(<item:comforts:sleeping_bag_brown>);
comfort.add(<item:comforts:sleeping_bag_purple>);
comfort.add(<item:comforts:sleeping_bag_magenta>);
comfort.add(<item:comforts:sleeping_bag_light_blue>);
comfort.add(<item:comforts:sleeping_bag_yellow>);
comfort.add(<item:comforts:sleeping_bag_lime>);
comfort.add(<item:comforts:sleeping_bag_pink>);
comfort.add(<item:comforts:sleeping_bag_gray>);
comfort.add(<item:comforts:sleeping_bag_light_gray>);
comfort.add(<item:comforts:sleeping_bag_cyan>);
comfort.add(<item:comforts:sleeping_bag_blue>);
comfort.add(<item:comforts:sleeping_bag_green>);
comfort.add(<item:comforts:sleeping_bag_red>);
comfort.add(<item:comforts:sleeping_bag_black>);

for element in comfort {
	<tag:items:comforts:sleeping_bags>.add(element);
	}
	
craftingTable.removeByName("comforts:sleeping_bag_white");
craftingTable.addShaped("comforts.sleeping_bag_white_fix", <item:comforts:sleeping_bag_white>, [[<item:minecraft:white_wool>], [<item:minecraft:white_wool>], [<item:minecraft:white_wool>]]);

	
var comfortwo = new List<IItemStack>();
comfortwo.add(<item:comforts:hammock_orange>);
comfortwo.add(<item:comforts:hammock_white>);
comfortwo.add(<item:comforts:hammock_brown>);
comfortwo.add(<item:comforts:hammock_purple>);
comfortwo.add(<item:comforts:hammock_magenta>);
comfortwo.add(<item:comforts:hammock_light_blue>);
comfortwo.add(<item:comforts:hammock_yellow>);
comfortwo.add(<item:comforts:hammock_lime>);
comfortwo.add(<item:comforts:hammock_pink>);
comfortwo.add(<item:comforts:hammock_gray>);
comfortwo.add(<item:comforts:hammock_light_gray>);
comfortwo.add(<item:comforts:hammock_cyan>);
comfortwo.add(<item:comforts:hammock_blue>);
comfortwo.add(<item:comforts:hammock_green>);
comfortwo.add(<item:comforts:hammock_red>);
comfortwo.add(<item:comforts:hammock_black>);

for element in comfortwo {
	<tag:items:comforts:hammocks>.add(element);
	}

var carpet = new List<IItemStack>();
carpet.add(<item:minecraft:orange_carpet>);
carpet.add(<item:minecraft:white_carpet>);
carpet.add(<item:minecraft:brown_carpet>);
carpet.add(<item:minecraft:purple_carpet>);
carpet.add(<item:minecraft:magenta_carpet>);
carpet.add(<item:minecraft:light_blue_carpet>);
carpet.add(<item:minecraft:yellow_carpet>);
carpet.add(<item:minecraft:lime_carpet>);
carpet.add(<item:minecraft:pink_carpet>);
carpet.add(<item:minecraft:gray_carpet>);
carpet.add(<item:minecraft:light_gray_carpet>);
carpet.add(<item:minecraft:cyan_carpet>);
carpet.add(<item:minecraft:blue_carpet>);
carpet.add(<item:minecraft:green_carpet>);
carpet.add(<item:minecraft:red_carpet>);
carpet.add(<item:minecraft:black_carpet>);

for element in carpet {
	<tag:items:minecraft:wool_carpets>.add(element);
	}
