-- Replace `limit` with `weight` if your database use weight
----------
-- Chargeur => Extended Clip
-- Lampe => Flashlight
-- Poignée => Grip
-- Silencieux => Supressor
-- Dorure => Deluxe Skin
----------
INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
('chargeur', 'Chargeur', -1, 0, 1),
('flashlight', 'Lampe', -1, 0, 1),
('grip', 'Poignée', -1, 0, 1),
('silencieux', 'Silencieux', -1, 0, 1),
('yusuf', 'Dorure', -1, 0, 1);
