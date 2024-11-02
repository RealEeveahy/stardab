SELECT  house.house_address AS 'Address',
		villager_id AS 'ID',
		villager_name AS 'Villager'
	FROM villager
	LEFT JOIN house ON villager.residency_id=house.house_id
	ORDER BY house.house_address ASC