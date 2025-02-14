// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum RECIPE 
{
	COPPERMILK,
	BANDAGE,
	WEAK_POTION,
	POTION,
	NOT_POTION,
	GOLD
	
	
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
	
global.recipes[RECIPE.POTION] = new Recipe
	([
		new ItemHolder(ITEM.WOOD, 5)
	], 
	ITEM.POTION
	)
	
global.recipes[RECIPE.WEAK_POTION] = new Recipe
	([
		new ItemHolder(ITEM.WOOD, 5)
	], 
	ITEM.WEAK_POTION
	)
	
global.recipes[RECIPE.NOT_POTION] = new Recipe
	([
		new ItemHolder(ITEM.WOOD, 5)
	], 
	ITEM.NOT_POTION
	)
	
global.recipes[RECIPE.GOLD] = new Recipe
	([
		new ItemHolder(ITEM.SILVER, 1),
		new ItemHolder(ITEM.COPPER, 1)
	], 
	ITEM.GOLD
	)
	

