// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum RECIPE 
{
	COPPERMILK,
	BANDAGE,
	WEAK_POTION,
	POTION,
	NOT_POTION,
	GOLD,
	COPPERMILK2,
	COPPERMILK3,
	COPPERMILK4,
	COPPERMILK5,
	COPPERMILK6
	
	
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
	
global.recipes[RECIPE.COPPERMILK2] = new Recipe
	([
		new ItemHolder(ITEM.SILVER, 1),
		new ItemHolder(ITEM.COPPER, 1),
		new ItemHolder(ITEM.GOLD, 1),
		new ItemHolder(ITEM.IRON, 1),
		new ItemHolder(ITEM.WOOD, 1),
	], 
	ITEM.COPPERMILK
	)
	
global.recipes[RECIPE.COPPERMILK3] = new Recipe
	([
		new ItemHolder(ITEM.COPPER, 3), 
		new ItemHolder(ITEM.IRON, 3)
	], 
	ITEM.COPPERMILK
	)
	
global.recipes[RECIPE.COPPERMILK4] = new Recipe
	([
		new ItemHolder(ITEM.COPPER, 4), 
		new ItemHolder(ITEM.IRON, 4)
	], 
	ITEM.COPPERMILK
	)
	
global.recipes[RECIPE.COPPERMILK5] = new Recipe
	([
		new ItemHolder(ITEM.COPPER, 5), 
		new ItemHolder(ITEM.IRON, 5)
	], 
	ITEM.COPPERMILK
	)
	
global.recipes[RECIPE.COPPERMILK6] = new Recipe
	([
		new ItemHolder(ITEM.COPPER, 6), 
		new ItemHolder(ITEM.IRON, 6)
	], 
	ITEM.COPPERMILK
	)
	

