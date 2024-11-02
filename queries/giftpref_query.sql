SELECT	villager.villager_name AS 'Villager', 
		favour_tier.tier_name AS 'Taste', 
		item.item_name AS 'Item'
	FROM gift_preference
	LEFT JOIN	villager ON gift_preference.this_villager_id=villager.villager_id
	LEFT JOIN	favour_tier ON gift_preference.this_tier_id=favour_tier.tier_id
	LEFT JOIN	item ON gift_preference.this_item_id=item.item_id
	--WHERE villager.villager_name = 'Haley' --optional overload to search for a specific villagers tastes
	--WHERE item.item_name = 'Dandelion' --optional overload to search for tastes of specific items
	--WHERE favour_tier.tier_name = 'Love' --optional overload to search for a specific taste level