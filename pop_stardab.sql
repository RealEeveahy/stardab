/* populate tables */
TRUNCATE TABLE gift_preference;
DELETE FROM villager;
DELETE FROM item;
DELETE FROM house;

INSERT INTO item (item_name, item_value)
VALUES	('Daffodil', 30),
		('Dandelion', 40),
		('Leek', 60),
		('Wild Horseradish', 50),
		('Spring Onion', 8),
		('Morel', 150),
		('Common Mushroom', 40),
		('Red Mushroom', 75),
		('Chanterelle', 160),
		('Purple Mushroom', 250),
		('Hazelnut', 90),
		('Blackberry', 20),
		('Wild Plum', 80),
		('Winter Root', 70),
		('Crystal Fruit', 150),
		('Snow Yam', 100),
		('Crocus', 60),
		('Fiddlehead Fern', 90),
		('Salmonberry', 5),
		('Spice Berry', 80),
		('Sweet Pea', 50),
		('Coral', 80),
		('Sea Urchin', 160),
		('Rainbow Shell', 300),
		('Nautilus Shell', 120),
		('Clam', 50),
		('Cockle', 50),
		('Mussel', 30),
		('Oyster', 40);

INSERT INTO house (house_address)
VALUES	('Mayors Manor'),
		('24 Mountain Road'),
		('2 Willow Lane'),
		('Marnies Ranch'),
		('1 Willow Lane'),
		('Trailer'),
		('The Stardrop Saloon'),
		('1 River Road'),
		('Pierres General Store'),
		('Eastern Cave'),
		('Fish Shop'),
		('Treehouse'),
		('Elliots Cabin'),
		('Oasis'),
		('The Sewers'),
		('Tent'),
		('Medical Clinic'),
		('Wizards Tower'),
		('Leahs Cottage'),
		('Blacksmith');

INSERT INTO villager (villager_name, birthday_num, birthday_season, residency_id)
VALUES	('Kent', 4, 1, 5),
		('Lewis', 7, 1, 1),
		('Vincent', 10, 1, 5),
		('Haley', 14, 1, 3),
		('Pam', 18, 1, 6),
		('Shane', 20, 1, 4),
		('Pierre', 26, 1, 9),
		('Emily', 27, 1, 3),
		('Jas', 4, 2, 4),
		('Gus', 8, 2, 7),
		('Maru', 10, 2, 2),
		('Alex', 13, 2, 8),
		('Sam', 17, 2, 5),
		('Demetrius', 19, 2, 2),
		('Dwarf', 22, 2, 10),
		('Willy', 24, 2, 11),
		('Leo', 10, 2, 12),
		('Penny', 2, 3, 6),
		('Elliot', 5, 3, 13),
		('Jodi', 11, 3, 5),
		('Abigail', 13, 3, 9),
		('Sandy', 15, 3, 14),
		('Marnie', 18, 3, 4),
		('Robin', 21, 3, 2),
		('George', 24, 3, 8),
		('Krobus', 1, 4, 15),
		('Linus', 3, 4, 16),
		('Caroline', 7, 4, 9),
		('Sebastian', 10, 4, 2),
		('Harvey', 14, 4, 17),
		('Wizard', 17, 4, 18),
		('Evelyn', 20, 4, 8),
		('Leah', 17, 4, 19),
		('Clint', 26, 4, 20);

INSERT INTO gift_preference (this_villager_id, this_item_id, this_tier_id)
VALUES	(4, 2, 4), -- Haley, Daffodil, Like
		(22, 2, 5); -- Sandy, Daffodil, Love 
