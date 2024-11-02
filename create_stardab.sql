
/*drop all tables on creation, must be done in reverse order of creation - will fail if foreign key refs are deleted first*/
DROP TABLE IF EXISTS dbo.gift_preference;
DROP TABLE IF EXISTS dbo.villager;
DROP TABLE IF EXISTS dbo.favour_tier;
DROP TABLE IF EXISTS dbo.house;
DROP TABLE IF EXISTS dbo.season;
DROP TABLE IF EXISTS dbo.item;

CREATE TABLE item (
	item_id INT PRIMARY KEY IDENTITY NOT NULL,
	item_name VARCHAR(255) NOT NULL,
	item_value INT NOT NULL
);
CREATE TABLE season (
	season_id INT PRIMARY KEY IDENTITY NOT NULL,
	season_name VARCHAR(6) NOT NULL
);
CREATE TABLE house (
	house_id INT PRIMARY KEY IDENTITY NOT NULL,
	house_address VARCHAR(255) NOT NULL
);
CREATE TABLE favour_tier (
	tier_id INT PRIMARY KEY IDENTITY NOT NULL,
	tier_name VARCHAR(10) NOT NULL
);
CREATE TABLE villager (
	villager_id INT PRIMARY KEY IDENTITY NOT NULL,
	villager_name VARCHAR(255) NOT NULL,
	birthday_num INT NOT NULL,
	birthday_season INT NOT NULL, FOREIGN KEY (birthday_season) REFERENCES season(season_id),
	residency_id INT NOT NULL, FOREIGN KEY (residency_id) REFERENCES house(house_id)
);
CREATE TABLE gift_preference (
	this_villager_id INT NOT NULL, FOREIGN KEY (this_villager_id) REFERENCES villager(villager_id),
	this_item_id INT NOT NULL, FOREIGN KEY (this_item_id) REFERENCES item(item_id),
	this_tier_id INT NOT NULL, FOREIGN KEY (this_tier_id) REFERENCES favour_tier(tier_id),
	PRIMARY KEY (this_villager_id, this_tier_id, this_item_id)
);

--populate tables with set objects that should not need future updates
SET IDENTITY_INSERT favour_tier ON;
INSERT INTO favour_tier(tier_id, tier_name)
VALUES	(1, 'Hate'),
		(2, 'Dislike'),
		(3, 'Neutral'),
		(4, 'Like'),
		(5, 'Love');

INSERT INTO season (season_name)
VALUES	('Spring'),
		('Summer'),
		('Fall'),
		('Winter');