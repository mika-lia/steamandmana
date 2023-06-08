import mods.create.MixingManager;
import crafttweaker.api.recipe.Replacer;
import mods.create.SequencedAssemblyManager;
import mods.create.PressingManager;
import mods.create.HauntingManager;



//Removing cast iron from blocky siege and new recipe for cast iron block

craftingTable.remove(<item:blocky_siege:cast_iron_ingot>);
craftingTable.remove(<item:blocky_siege:cast_iron_nugget>);
craftingTable.remove(<item:blocky_siege:block_of_cast_iron>);

craftingTable.addShaped("alternate_block_of_cast_iron_blockysiege", <item:blocky_siege:block_of_cast_iron>, 
[[<item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>], [<item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_nugget>, <item:createdeco:cast_iron_ingot>], [<item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>]]);

Replacer.forTypes(craftingTable).replaceFully(<item:blocky_siege:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>).suppressWarnings().execute();
Replacer.forTypes(craftingTable).replaceFully(<item:blocky_siege:cast_iron_nugget>, <item:createdeco:cast_iron_nugget>).suppressWarnings().execute();

craftingTable.addShaped("blocky_siege.mortar", <item:blocky_siege:mortar_item>, [[<item:minecraft:air>, <item:blocky_siege:block_of_cast_iron>, <item:minecraft:air>], [<item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>], [<item:blocky_siege:charred_planks>, <item:minecraft:blast_furnace>, <item:blocky_siege:charred_planks>]]);

craftingTable.removeByName("blocky_siege:cannon_recipe");
craftingTable.addShaped("blocky_siege.cannon_recipe", <item:blocky_siege:cannon>, [[<item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>], [<item:blocky_siege:charred_planks>, <item:minecraft:blast_furnace>, <item:blocky_siege:charred_planks>]]);

craftingTable.addShaped("blocky_siege.crusher_recipe", <item:blocky_siege:crusher_item>, [[<item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>], [<item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>, <item:blocky_siege:block_of_cast_iron>], [<item:blocky_siege:gears>, <item:supplementaries:spring_launcher>, <item:blocky_siege:gears>]]);

//removing CBC cast iron recipes

craftingTable.remove(<item:createbigcannons:cast_iron_ingot>);
craftingTable.remove(<item:createbigcannons:cast_iron_nugget>);
craftingTable.remove(<item:createbigcannons:cast_iron_block>);

//create recipe removal

<recipetype:create:pressing>.remove(<item:createdeco:zinc_sheet>);

//Sequenced assembly recipes


<recipetype:create:sequenced_assembly>.removeByName("create_sa:heat_engine_recipe");
<recipetype:create:sequenced_assembly>.removeByName("create_sa:hydraulic_engine_recipe");
<recipetype:create:sequenced_assembly>.removeByName("create_sa:steam_engine_recipe");

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("create_sa.heat_engine_recipe")
                                                      .transitionTo(<item:createaddition:zinc_sheet>)
                                                      .require(<item:createaddition:zinc_sheet>)
                                                      .loops(2)
                                                      .addOutput(<item:create_sa:heat_engine>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:powdered_obsidian>))
													  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create_sa:small_fueling_tank>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:lava> * 100)));


<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("create_sa.hydraulic_engine_recipe")
                                                      .transitionTo(<item:immersiveengineering:plate_copper>)
                                                      .require(<tag:items:forge:plates/copper>)
                                                      .loops(4)
                                                      .addOutput(<item:create_sa:hydraulic_engine>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:fluid_tank>))
													  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:mechanical_pump>))
													  .addStep<mods.createtweaker.PressingRecipe>((rb) => rb.duration(500))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 250)));
													  
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("create_sa.steam_engine_recipe")
                                                      .transitionTo(<item:create:brass_sheet>)
                                                      .require(<item:create:brass_sheet>)
                                                      .loops(1)
                                                      .addOutput(<item:create_sa:steam_engine>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:extendedgears:cogwheel>))
													  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:immersiveengineering:component_steel>))
													  .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:nether_star>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((rb) => rb.require(<fluid:minecraft:water> * 500)));
													  
													 

//removing a bunch of recipes

craftingTable.removeByName("car:oilmill");
craftingTable.removeByName("car:blastfurnace");
craftingTable.removeByName("car:backmix_reactor");
craftingTable.removeByName("car:generator");
craftingTable.removeByName("car:split_tank");
craftingTable.removeByName("car:tank");
craftingTable.removeByName("car:cable");
craftingTable.removeByName("car:fluid_extractor");
craftingTable.removeByName("car:fluid_pipe");
craftingTable.removeByName("car:dynamo");
craftingTable.removeByName("car:crank");
craftingTable.removeByName("car:gas_station");
craftingTable.remove(<item:car:iron_stick>);
craftingTable.removeByName("car:engine_piston");
craftingTable.removeByName("car:engine_3_cylinder");
craftingTable.removeByName("car:engine_6_cylinder");
craftingTable.removeByName("car:engine_truck");
craftingTable.removeByName("car:asphalt_charcoal");
craftingTable.removeByName("car:asphalt_coal");
craftingTable.removeByName("car:asphalt_wool");
craftingTable.remove(<item:car:cable_insulator>);
craftingTable.remove(<item:tinkers_reforged:aluminum_ingot>);
furnace.remove(<item:tinkers_reforged:aluminum_ingot>);
blastFurnace.remove(<item:tinkers_reforged:aluminum_ingot>);
craftingTable.remove(<item:tinkers_reforged:aluminum_block>);
craftingTable.removeByName("blocky_siege:crude_iron_compound_recipe");
craftingTable.removeByName("vs_eureka:balloon_leather");
craftingTable.removeByName("vs_eureka:balloon_membrane");
craftingTable.removeByName("vs_eureka:balloon_paper");
craftingTable.removeByName("vs_eureka:balloon_string");
craftingTable.removeByName("vs_eureka:balloon_wool");
craftingTable.removeByName("mob_grinding_utils:recipe_jumbotank");




Replacer.forTypes(craftingTable).replaceFully(<item:car:tank>, <item:create:fluid_tank>).suppressWarnings().execute();

//readding engines

craftingTable.addShaped("car.engine_piston", <item:car:engine_piston>, [[<item:minecraft:air>, <item:minecraft:air>, <item:createdeco:cast_iron_ingot>], [<item:minecraft:air>, <tag:items:forge:rods/iron>, <item:minecraft:air>], [<tag:items:forge:rods/iron>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.addShaped("car.engine_3_cylinder", <item:car:engine_3_cylinder>, [[<item:minecraft:flint>, <item:minecraft:flint>, <item:minecraft:flint>], [<item:car:engine_piston>, <item:car:engine_piston>, <item:car:engine_piston>], [<item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>]]);

craftingTable.addShaped("car.engine_6_cylinder", <item:car:engine_6_cylinder>, [[<item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>], [<item:car:engine_3_cylinder>, <item:immersiveengineering:heavy_engineering>, <item:car:engine_3_cylinder>], [<item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>, <item:createdeco:cast_iron_ingot>]]);

craftingTable.addShaped("car.engine_truck", <item:car:engine_truck>, [[<item:minecraft:flint>, <item:create:precision_mechanism>, <item:minecraft:flint>], [<item:car:engine_piston>, <item:car:engine_piston>, <item:car:engine_piston>], [<item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>, <item:immersiveengineering:light_engineering>]]);

//readding the gas station

craftingTable.addShaped("car_gas_station_alt", <item:car:gas_station>, [[<tag:items:forge:ingots/iron>, <tag:items:forge:storage_blocks/iron>, <tag:items:forge:ingots/iron>], [<tag:items:forge:ingots/iron>, <item:minecraft:redstone_block>, <tag:items:forge:ingots/iron>], [<item:minecraft:smooth_stone_slab>, <item:create:fluid_tank>, <item:minecraft:smooth_stone_slab>]]);

//asphalt

craftingTable.addShaped("car.asphalt", <item:car:asphalt> * 8, [[<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>], [<item:minecraft:cobblestone>, <item:minecraft:black_concrete_powder>, <item:minecraft:cobblestone>], [<item:minecraft:cobblestone>, <item:minecraft:cobblestone>, <item:minecraft:cobblestone>]]);

//IE steel gating

craftingTable.removeByName("immersiveengineering:crafting/cokebrick");
craftingTable.addShaped("immersiveengineering.crafting/cokebrick", <item:immersiveengineering:cokebrick> * 3, [[<item:create_things_and_misc:crushed_magma>, <tag:items:forge:ingots/brick>, <item:create_things_and_misc:crushed_magma>], [<tag:items:forge:ingots/brick>, <item:minecraft:clay>, <tag:items:forge:ingots/brick>], [<item:create_things_and_misc:crushed_magma>, <tag:items:forge:ingots/brick>, <item:create_things_and_misc:crushed_magma>]]);

craftingTable.removeByName("immersiveengineering:crafting/blastbrick");
<recipetype:create:mixing>.addRecipe("immersiveengineering.crafting/blastbrick", <constant:create:heat_condition:none>, [(<item:immersiveengineering:blastbrick> * 1) % 100.0], [<item:immersiveengineering:cokebrick> * 1], [<fluid:tconstruct:blazing_blood> * 100]);

craftingTable.removeByName("immersiveengineering:crafting/alloybrick");
craftingTable.addShaped("immersiveengineering.crafting/alloybrick", <item:immersiveengineering:alloybrick> * 2, [[<tag:items:forge:sandstone>, <tag:items:forge:ingots/brick>, <item:create_things_and_misc:crushed_magma>], [<tag:items:forge:ingots/brick>, <tag:items:forge:sandstone>, <item:create_things_and_misc:crushed_magma>]]);

//Musket mod 

craftingTable.removeByName("musketmod:musket");
craftingTable.addShaped("musketmod.musket", <item:musketmod:musket>, [[<item:createdeco:cast_iron_ingot>, <item:minecraft:air>, <item:minecraft:air>], [<item:minecraft:air>, <item:createdeco:cast_iron_ingot>, <item:minecraft:flint_and_steel>], [<item:minecraft:air>, <item:createdeco:cast_iron_nugget>, <tag:items:forge:treated_wood>]]);
craftingTable.removeByName("musketmod:pistol");
craftingTable.addShaped("musketmod.pistol", <item:musketmod:pistol>, [[<item:createdeco:cast_iron_ingot>, <item:minecraft:flint_and_steel>], [<item:createdeco:cast_iron_nugget>, <tag:items:forge:treated_wood>]]);

//toms storage 

craftingTable.removeByName("toms_storage:storage_terminal");
craftingTable.addShaped("toms_storage.storage_terminal", <item:toms_storage:ts.storage_terminal>, [[<item:create:display_board>, <item:minecraft:comparator>, <item:create:display_board>], [<item:createaddition:copper_spool>, <tag:items:minecraft:planks>, <item:createaddition:copper_spool>], [<item:createaddition:copper_rod>, <tag:items:minecraft:buttons>, <item:createaddition:copper_rod>]]);

craftingTable.removeByName("toms_storage:crafting_terminal");
craftingTable.addShaped("toms_storage.crafting_terminal", <item:toms_storage:ts.crafting_terminal>, [[<item:create:precision_mechanism>, <item:create_sa:heat_engine>, <item:create:precision_mechanism>], [<tag:items:forge:gems/diamond>, <item:toms_storage:ts.storage_terminal>, <tag:items:forge:gems/diamond>], [<item:minecraft:crafting_table>, <item:create:linked_controller>, <item:minecraft:crafting_table>]]);

craftingTable.removeByName("toms_storage:inventory_cable");
craftingTable.addShaped("toms_storage.inventory_cable", <item:toms_storage:ts.inventory_cable> * 6, [[<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:dried_kelp>, <item:minecraft:air>], [<item:minecraft:air>, <item:create:brass_sheet>, <item:minecraft:air>]]);

//immersive aircraft

craftingTable.removeByName("immersive_aircraft:boiler");
craftingTable.addShaped("immersive_aircraft.boiler", <item:immersive_aircraft:boiler>, [[<tag:items:extendedgears:large_cogwheel>, <tag:items:extendedgears:small_cogwheel>, <tag:items:extendedgears:large_cogwheel>], [<item:minecraft:copper_ingot>, <item:minecraft:blast_furnace>, <item:minecraft:copper_ingot>], [<tag:items:extendedgears:large_cogwheel>, <tag:items:extendedgears:small_cogwheel>, <tag:items:extendedgears:large_cogwheel>]]);

craftingTable.removeByName("immersive_aircraft:engine");
craftingTable.addShaped("immersive_aircraft.engine", <item:immersive_aircraft:engine>, [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>], [<item:minecraft:air>, <item:create_sa:hydraulic_engine>, <item:minecraft:air>], [<item:minecraft:air>, <item:immersive_aircraft:boiler>, <item:minecraft:air>]]);

craftingTable.removeByName("immersive_aircraft:hull");
craftingTable.addShaped("immersive_aircraft.hull", <item:immersive_aircraft:hull>, [[<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>], [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>], [<item:create:andesite_alloy>, <item:create:andesite_alloy>, <item:create:andesite_alloy>]]);

craftingTable.removeByName("immersive_aircraft:steel_boiler");
craftingTable.addShaped("immersive_aircraft.steel_boiler", <item:immersive_aircraft:steel_boiler>, [[<item:immersiveengineering:ingot_steel>, <item:immersiveengineering:ingot_steel>, <item:immersiveengineering:ingot_steel>], [<item:immersiveengineering:ingot_steel>, <item:immersive_aircraft:boiler>, <item:immersiveengineering:ingot_steel>], [<item:immersiveengineering:ingot_steel>, <item:immersiveengineering:ingot_steel>, <item:immersiveengineering:ingot_steel>]]);

craftingTable.removeByName("immersive_aircraft:industrial_gears");
craftingTable.addShaped("immersive_aircraft.industrial_gears", <item:immersive_aircraft:industrial_gears>, [[<item:minecraft:air>, <item:immersiveengineering:ingot_steel>, <item:immersiveengineering:ingot_steel>], [<item:minecraft:copper_ingot>, <tag:items:extendedgears:large_cogwheel>, <item:immersiveengineering:ingot_steel>], [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:air>]]);

craftingTable.removeByName("immersive_aircraft:sturdy_pipes");
craftingTable.addShaped("immersive_aircraft.sturdy_pipes", <item:immersive_aircraft:sturdy_pipes>, [[<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:copper_ingot>], [<item:immersiveengineering:ingot_steel>, <item:minecraft:copper_ingot>, <item:immersiveengineering:ingot_steel>], [<item:minecraft:copper_ingot>, <item:minecraft:air>, <item:minecraft:air>]]);

craftingTable.removeByName("immersive_aircraft:improved_landing_gear");
craftingTable.addShaped("immersive_aircraft.improved_landing_gear", <item:immersive_aircraft:improved_landing_gear>, [[<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>], [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <item:minecraft:iron_ingot>], [<tag:items:minecraft:wool>, <tag:items:minecraft:wool>, <item:minecraft:air>]]);

//potioneering gauntlet

craftingTable.removeByName("davespotioneering:potion_injector");
craftingTable.addShaped("davespotioneering.potion_injector", <item:davespotioneering:potion_injector>, [[<item:immersiveengineering:ingot_steel>, <item:minecraft:stone_button>, <item:immersiveengineering:ingot_steel>], [<item:immersiveengineering:stick_treated>, <item:immersiveengineering:ingot_steel>, <item:immersiveengineering:stick_treated>], [<item:minecraft:glass>, <item:immersiveengineering:ingot_steel>, <item:minecraft:glass>]]);

craftingTable.removeByName("davespotioneering:rudimentary_gauntlet");
craftingTable.addShaped("davespotioneering.rudimentary_gauntlet", <item:davespotioneering:rudimentary_gauntlet>, [[<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>],[<item:create:brass_ingot>,<item:create:brass_ingot>,<item:create:brass_ingot>], [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>]]);

//VS eureka

craftingTable.removeByName("vs_eureka:engine");
craftingTable.addShaped("vs_eureka.engine", <item:vs_eureka:engine>, [[<item:minecraft:stone>, <item:minecraft:stone>, <item:minecraft:stone>], [<item:create_sa:steam_engine>, <item:minecraft:blast_furnace>, <item:minecraft:glass_pane>], [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]]);

craftingTable.removeByName("create_things_and_misc:air_pocket_craft");
craftingTable.addShaped("vs_eureka.balloon", <item:vs_eureka:balloon>, [[<item:create:white_sail>, <item:create:white_sail>, <item:create:white_sail>], [<item:create:white_sail>, <item:minecraft:air>, <item:create:white_sail>], [<item:create:white_sail>, <item:create:white_sail>, <item:create:white_sail>]]);

craftingTable.removeByName("create_things_and_misc:blaze_burner_craft");
craftingTable.addShaped("create_things_and_misc.blaze_burner_craft", <item:create_things_and_misc:blaze_ballon>, [[<item:vs_eureka:red_balloon>], [<item:create:blaze_burner>]]);

craftingTable.removeByName("vs_eureka:ballast");
craftingTable.addShaped("vs_eureka.ballast", <item:vs_eureka:ballast>, [[<item:create:fluid_tank>, <tag:items:forge:dusts/redstone>]]);

craftingTable.removeByName("vs_eureka:floater");
craftingTable.addShaped("vs_eureka.floater", <item:vs_eureka:floater> * 6, [[<item:minecraft:air>, <item:create:andesite_casing>], [<item:minecraft:string>, <tag:items:minecraft:planks>, <item:minecraft:string>], [<item:minecraft:air>, <item:create:andesite_casing>]]);

craftingTable.removeByName("vs_eureka:warped_ship_helm");
craftingTable.addShaped("vs_eureka.warped_ship_helm", <item:vs_eureka:warped_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:warped_fence>, <item:minecraft:stick>], [<item:minecraft:warped_fence>, <item:create:precision_mechanism>, <item:minecraft:warped_fence>], [<item:minecraft:stick>, <item:minecraft:warped_slab>, <item:minecraft:stick>]]);

craftingTable.removeByName("vs_eureka:crimson_ship_helm");
craftingTable.addShaped("vs_eureka.crimson_ship_helm", <item:vs_eureka:crimson_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:crimson_fence>, <item:minecraft:stick>], [<item:minecraft:crimson_fence>, <item:create:precision_mechanism>, <item:minecraft:crimson_fence>], [<item:minecraft:stick>, <item:minecraft:crimson_slab>, <item:minecraft:stick>]]);

craftingTable.removeByName("vs_eureka:oak_ship_helm");
craftingTable.addShaped("vs_eureka.oak_ship_helm", <item:vs_eureka:oak_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:oak_fence>, <item:minecraft:stick>], [<item:minecraft:oak_fence>, <item:create:precision_mechanism>, <item:minecraft:oak_fence>], [<item:minecraft:stick>, <item:minecraft:oak_slab>, <item:minecraft:stick>]]);

craftingTable.removeByName("vs_eureka:jungle_ship_helm");
craftingTable.addShaped("vs_eureka.jungle_ship_helm", <item:vs_eureka:jungle_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:jungle_fence>, <item:minecraft:stick>], [<item:minecraft:jungle_fence>, <item:create:precision_mechanism>, <item:minecraft:jungle_fence>], [<item:minecraft:stick>, <item:minecraft:jungle_slab>, <item:minecraft:stick>]]);

craftingTable.removeByName("vs_eureka:dark_oak_ship_helm");
craftingTable.addShaped("vs_eureka.dark_oak_ship_helm", <item:vs_eureka:dark_oak_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:dark_oak_fence>, <item:minecraft:stick>], [<item:minecraft:dark_oak_fence>, <item:create:precision_mechanism>, <item:minecraft:dark_oak_fence>], [<item:minecraft:stick>, <item:minecraft:dark_oak_slab>, <item:minecraft:stick>]]);

craftingTable.removeByName("vs_eureka:birch_ship_helm");
craftingTable.addShaped("vs_eureka.birch_ship_helm", <item:vs_eureka:birch_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:birch_fence>, <item:minecraft:stick>], [<item:minecraft:birch_fence>, <item:create:precision_mechanism>, <item:minecraft:birch_fence>], [<item:minecraft:stick>, <item:minecraft:birch_slab>, <item:minecraft:stick>]]);

craftingTable.removeByName("vs_eureka:acacia_ship_helm");
craftingTable.addShaped("vs_eureka.acacia_ship_helm", <item:vs_eureka:acacia_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:acacia_fence>, <item:minecraft:stick>], [<item:minecraft:acacia_fence>, <item:create:precision_mechanism>, <item:minecraft:acacia_fence>], [<item:minecraft:stick>, <item:minecraft:acacia_slab>, <item:minecraft:stick>]]);

craftingTable.removeByName("vs_eureka:spruce_ship_helm");
craftingTable.addShaped("vs_eureka.spruce_ship_helm", <item:vs_eureka:spruce_ship_helm>, [[<item:minecraft:stick>, <item:minecraft:spruce_fence>, <item:minecraft:stick>], [<item:minecraft:spruce_fence>, <item:create:precision_mechanism>, <item:minecraft:spruce_fence>], [<item:minecraft:stick>, <item:minecraft:spruce_slab>, <item:minecraft:stick>]]);

//spirit haunting

<recipetype:create:haunting>.addRecipe("spirit.soul_powder", [<item:spirit:soul_powder> % 100], <item:minecraft:glowstone_dust>, 300);
<recipetype:create:haunting>.removeByName("create:haunting/infested_deepslate");
<recipetype:create:haunting>.addRecipe("spirit_deepslate", [<item:spirit:soul_slate> % 100.0], <item:minecraft:deepslate>, 300);

//mob grinding utils



craftingTable.removeByName("mob_grinding_utils:recipe_entity_spawner");
craftingTable.addShaped("mob_grinding_utils.recipe_entity_spawner", <item:mob_grinding_utils:entity_spawner>, [[<item:minecraft:ender_eye>, <item:minecraft:ender_eye>, <item:minecraft:ender_eye>], [<item:blocky_siege:gears>, <item:mob_grinding_utils:solid_xp_block>, <item:immersive_aircraft:industrial_gears>], [<item:immersiveengineering:ingot_steel>, <item:minecraft:nether_star>, <item:immersiveengineering:ingot_steel>]]);

craftingTable.removeByName("mob_grinding_utils:recipe_fan");
craftingTable.addShaped("mob_grinding_utils.recipe_fan", <item:mob_grinding_utils:fan>, [[<item:immersiveengineering:ingot_steel>, <tag:items:forge:ingots/iron>, <item:immersiveengineering:ingot_steel>], [<tag:items:forge:ingots/iron>, <item:create:propeller>, <tag:items:forge:ingots/iron>], [<item:immersiveengineering:ingot_steel>, <tag:items:forge:ingots/iron>, <item:immersiveengineering:ingot_steel>]]);

craftingTable.removeByName("mob_grinding_utils:recipe_tank");
craftingTable.addShaped("mob_grinding_utils.recipe_tank", <item:mob_grinding_utils:tank>, [[<item:immersiveengineering:ingot_steel>, <tag:items:forge:glass>, <item:immersiveengineering:ingot_steel>], [<tag:items:forge:glass>, <tag:items:forge:glass>, <tag:items:forge:glass>], [<item:immersiveengineering:ingot_steel>, <tag:items:forge:glass>, <item:immersiveengineering:ingot_steel>]]);