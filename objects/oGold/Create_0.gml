/// @description 

event_inherited();

itemID = ITEM.GOLD;


/*
TO ADD AN ITEM:

Figure out which type of item (in "itemClasses" script) to use
Edit "itemData" accordingly.

Make sure you create the actual item object.

Swords/other weapons will function as AttackIncrease with the "held" value set to "true". Will remove item
from the inventory and allow put in hand when collected.

Armor sets will function as DefenseIncrease with the "held" value set to "true". Will remove item
from the inventory and allow put in hand when collected.

*/