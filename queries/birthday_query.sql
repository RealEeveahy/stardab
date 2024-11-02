SELECT villager_name as 'Villager', 
		CONCAT(birthday_num, ' ', season.season_name) as 'Birthday'
	FROM villager
	LEFT JOIN season ON villager.birthday_season=season.season_id