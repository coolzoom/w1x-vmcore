DROP PROCEDURE IF EXISTS add_migration;
delimiter ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20181205160926');
IF v=0 THEN
INSERT INTO `migrations` VALUES ('20181205160926');
-- Add your query below.


-- Erk & Fang
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 13578;
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 13166;
DELETE FROM `creature_movement` WHERE `id` IN (13578, 13166);

DELETE FROM `creature_movement_template` WHERE `entry` = 14857;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `orientation`) VALUES 
(14857, 1, -29.461918, -2615.942383, 97.156921, 2000, 1485701, 0, 5.923830),
(14857, 2, -25.871311, -2613.071777, 97.237740, 10000, 1485702, 10249, 0.440972),
(14857, 3, -19.149178, -2619.644287, 97.206207, 0, 0, 0, 0),
(14857, 4, -11.761329, -2621.954346, 95.720047, 0, 0, 0, 0),
(14857, 5, -9.085948, -2621.673340, 94.958389, 0, 0, 0, 0),
(14857, 6, -3.633063, -2621.637939, 92.131180, 0, 0, 0, 0),
(14857, 7, 3.790725, -2621.660400, 89.812195, 35000, 1485703, 0, 6.159449),
(14857, 8, -0.125211, -2621.110107, 91.288040, 0, 0, 0, 0),
(14857, 9, -4.097071, -2636.676514, 91.979828, 0, 0, 0, 0),
(14857, 10, -9.720197, -2640.140869, 95.660744, 0, 0, 0, 0),
(14857, 11, -21.905458, -2647.225098, 95.833397, 0, 0, 0, 0),
(14857, 12, -29.928484, -2641.602295, 96.080391, 0, 0, 0, 0),
(14857, 13, -33.601181, -2638.687256, 96.445763, 0, 0, 0, 0),
(14857, 14, -33.754395, -2634.782715, 96.275017, 0, 0, 0, 0),
(14857, 15, -31.780426, -2631.539307, 95.990501, 0, 0, 0, 0),
(14857, 16, -30.316862, -2631.180908, 95.940948, 0, 0, 0, 0),
(14857, 17, -29.142475, -2632.012695, 95.948257, 10000, 0, 0, 5.829583),
(14857, 18, -29.142475, -2632.012695, 95.948257, 1000, 0, 10196, 5.829583),
(14857, 19, -32.082474, -2632.893555, 96.072723, 0, 0, 0, 0),
(14857, 20, -32.984558, -2638.700439, 96.384636, 0, 0, 0, 0),
(14857, 21, -31.521265, -2644.058350, 96.142921, 0, 0, 0, 0),
(14857, 22, -24.469679, -2646.372070, 95.832581, 0, 0, 0, 0),
(14857, 23, -18.641375, -2646.821289, 95.832581, 0, 0, 0, 0),
(14857, 24, -9.770051, -2641.352539, 95.589363, 0, 0, 0, 0),
(14857, 25, -8.478262, -2640.574463, 95.227699, 0, 0, 0, 0),
(14857, 26, -3.890227, -2637.855713, 92.000694, 0, 0, 0, 0),
(14857, 27, 4.778752, -2632.607178, 89.837997, 20000, 1485704, 0, 0.488875),
(14857, 28, 4.778752, -2632.607178, 89.837997, 0, 1485701, 0, 0.488875),
(14857, 29, 4.568168, -2635.551270, 90.447380, 0, 0, 0, 0),
(14857, 30, 10.748284, -2640.516846, 90.386475, 0, 0, 0, 0),
(14857, 31, 34.780556, -2655.085938, 91.912651, 0, 0, 0, 0),
(14857, 32, 53.316978, -2671.718994, 91.666901, 0, 0, 0, 0),
(14857, 33, 63.588814, -2689.054932, 92.944565, 0, 0, 0, 0),
(14857, 34, 60.226498, -2698.291016, 92.096138, 0, 0, 0, 0),
(14857, 35, 55.970112, -2699.551270, 91.900703, 0, 0, 0, 0),
(14857, 36, 55.045853, -2698.405762, 91.944672, 0, 1485702, 0, 2.487714),
(14857, 37, 55.045853, -2698.405762, 91.944672, 20000, 1485705, 0, 2.487714),
(14857, 38, 45.898525, -2702.470947, 91.700233, 0, 0, 0, 0),
(14857, 39, 31.040888, -2703.291992, 91.667572, 0, 0, 0, 0),
(14857, 40, 23.505503, -2699.469482, 91.734627, 0, 0, 0, 0),
(14857, 41, 10.482596, -2681.701416, 91.750694, 0, 0, 0, 0),
(14857, 42, -0.678281, -2668.660645, 91.921181, 0, 0, 0, 0),
(14857, 43, -8.814530, -2659.541016, 95.559288, 0, 0, 0, 0),
(14857, 44, -14.487419, -2643.521729, 95.831528, 0, 0, 0, 0),
(14857, 45, -17.088795, -2620.453125, 96.330254, 0, 0, 0, 0),
(14857, 46, -19.107914, -2619.602539, 97.197205, 0, 0, 0, 0),
(14857, 47, -29.461918, -2615.942383, 97.156921, 0, 0, 0, 0),
(14857, 48, -29.461918, -2615.942383, 97.156921, 120000, 0, 0, 5.923830);

DELETE FROM `creature_groups` WHERE `leader_guid` = 13166;
INSERT INTO `creature_groups` (`leader_guid`, `member_guid`, `dist`, `angle`, `flags`) VALUES 
(13166, 13166, 0, 0, 1),
(13166, 13578, 3, 180, 1);

DELETE FROM `creature_movement_scripts` WHERE `id` IN (1485701, 1485702, 1485703, 1485704, 1485705);
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(1485701, 0, 25, 1, 0, "Erk - Run On"),
(1485702, 0, 25, 0, 0, "Erk - Run Off");

INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(1485703, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10250, 0, 0, 0, 0, 0, 0, 0, 0, "Erk - Say Text"),
(1485703, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10195, 0, 0, 0, 0, 0, 0, 0, 0, "Erk - Say Text"),
(1485704, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10205, 0, 0, 0, 0, 0, 0, 0, 0, "Erk - Say Text"),
(1485705, 3, 35, 0, 0, 0, 0, 13579, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Erk - Set Orientation'),
(1485705, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10198, 0, 0, 0, 0, 0, 0, 0, 0, 'Erk - Say Text'),
(1485705, 9, 0, 0, 0, 0, 0, 13579, 0, 9, 2, 10223, 0, 0, 0, 0, 0, 0, 0, 0, 'Erk - Say Text (Guard Kurall)'),
(1485705, 10, 1, 21, 0, 0, 0, 13579, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Erk - Play Emote (Guard Kurall)'),
(1485705, 15, 1, 7, 0, 0, 0, 19412, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Erk - Play Emote (Horde Guard)'),
(1485705, 15, 1, 7, 0, 0, 0, 13579, 0, 9, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Erk - Play Emote (Guard Kurall)'),
(1485705, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10206, 0, 0, 0, 0, 0, 0, 0, 0, 'Erk - Say Text');

UPDATE `creature` SET `MovementType` = 2, `spawndist` = 0 WHERE `guid` IN (19361, 19402);
DELETE FROM `creature_movement` WHERE `id` IN (19361, 19402);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19361,1,-39.0541,-2612.88,97.6059,2000,0,0.314159),
(19361,2,-39.0541,-2612.88,97.6059,2600,1936101,0.314159),
(19361,3,-39.0541,-2612.88,97.6059,6000,0,0.314159),
(19402,1,-36.9096,-2614.24,97.1546,4000,0,2.58309),
(19402,2,-36.9096,-2614.24,97.1546,2600,1940201,2.58309),
(19402,3,-36.9096,-2614.24,97.1546,4000,0,2.58309);

DELETE FROM `creature_movement_scripts` WHERE `id` IN (1936101, 1940201);
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `comments`) VALUES
(1936101, 0, 1, 11, 7, 6, 1, "Horde Guard - Random Emote (11, 7, 6, 1)"),
(1940201, 0, 1, 273, 274, 6, 1, "Horde Guard - Random Emote (273, 274, 6, 1)");

UPDATE `creature` SET `MovementType` = 2, `spawndist` = 0 WHERE `guid` IN (19412, 13579);
DELETE FROM `creature_movement` WHERE `id` IN (19412, 13579);
INSERT INTO `creature_movement` (`id`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(19412,1,55.2058,-2695.69,92.1666,2000,0,4.34587),
(19412,2,55.2058,-2695.69,92.1666,2600,1941201,4.34587),
(19412,3,55.2058,-2695.69,92.1666,6000,0,4.34587),
(13579,1,52.7833,-2696.62,92.0416,4000,0,6.04953),
(13579,2,52.7833,-2696.62,92.0416,2600,1357901,6.04953),
(13579,3,52.7833,-2696.62,92.0416,4000,0,6.04953);

DELETE FROM `creature_movement_scripts` WHERE `id` IN (1941201, 1357901);
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `command`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `comments`) VALUES
(1941201, 0, 1, 11, 7, 6, 1, "Horde Guard - Random Emote (11, 7, 6, 1)"),
(1357901, 0, 1, 273, 274, 6, 1, "Horde Guard - Random Emote (273, 274, 6, 1)");


-- End of migration.
END IF;
END??
delimiter ; 
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;
