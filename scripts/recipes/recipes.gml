// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum RECIPE 
{
	COPPERMILK,
	BANDAGE
	
}

global.recipes[RECIPE.COPPERMILK] = new Recipe
	([
		new ItemHolder(ITEM.COPPER, 1), 
		new ItemHolder(ITEM.IRON, 1)
	], 
	ITEM.COPPERMILK
	)
	
global.recipes[RECIPE.BANDAGE] = new Recipe
	([
		new ItemHolder(ITEM.WOOD, 5)
	], 
	ITEM.BANDAGE
	)

