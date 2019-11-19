UPDATE zone SET min_expansion=1 WHERE short_name IN ('befallen', 'butcher', 'cazicthule', 'guktop', 'mistmoore');
UPDATE zone SET min_expansion=2 WHERE short_name IN ('burningwood', 'cabeast', 'cabwest', 'charasis', 'chardok', 'citymist', 'dalnir', 'dreadlands', 'droga', 'emeraldjungle', 'erudsxing', 'fieldofbone', 'firiona', 'frontiermtns', 'kaesora', 'karnor', 'kurn', 'lakeofillomen', 'nurga', 'overthere', 'sebilis', 'skyfire', 'soltemple', 'stonebrunt', 'swampofnohope', 'timorous', 'trakanon', 'veeshan', 'veksar', 'warrens', 'warslikswood');
UPDATE zone SET min_expansion=3 WHERE short_name IN ('cobaltscar', 'crystal', 'eastwastes', 'frozenshadow', 'greatdivide', 'growthplane', 'iceclad', 'kael', 'mischiefplane', 'necropolis', 'sirens', 'skyshrine', 'sleeper', 'templeveeshan', 'thurgadina', 'thurgadinb', 'velketor', 'wakening', 'westwastes');
UPDATE zone SET min_expansion=3 WHERE short_name IN ('acrylia', 'akheva', 'bazaar', 'dawnshroud', 'echo', 'fungusgrove', 'griegsend', 'grimling', 'hollowshade', 'katta', 'letalis', 'maiden', 'mseru', 'netherbian', 'nexus', 'paludal', 'scarlet', 'shadeweaver', 'shadowhaven', 'sharvahl', 'sseru', 'ssratemple', 'tenebrous', 'thedeep', 'thegrey', 'twilight', 'umbral', 'vexthal', 'bazaar');


UPDATE zone SET long_name = 'Accursed Temple of Cazic-Thule' WHERE zoneidnumber = 48;



INSERT INTO `zone` (`short_name`, `id`, `file_name`, `long_name`, `map_file_name`, `safe_x`, `safe_y`, `safe_z`, `graveyard_id`, `min_level`, `min_status`, `zoneidnumber`, `version`, `timezone`, `maxclients`, `ruleset`, `note`, `underworld`, `minclip`, `maxclip`, `fog_minclip`, `fog_maxclip`, `fog_blue`, `fog_red`, `fog_green`, `sky`, `ztype`, `zone_exp_multiplier`, `walkspeed`, `time_type`, `fog_red1`, `fog_green1`, `fog_blue1`, `fog_minclip1`, `fog_maxclip1`, `fog_red2`, `fog_green2`, `fog_blue2`, `fog_minclip2`, `fog_maxclip2`, `fog_red3`, `fog_green3`, `fog_blue3`, `fog_minclip3`, `fog_maxclip3`, `fog_red4`, `fog_green4`, `fog_blue4`, `fog_minclip4`, `fog_maxclip4`, `fog_density`, `flag_needed`, `canbind`, `cancombat`, `canlevitate`, `castoutdoor`, `hotzone`, `insttype`, `shutdowndelay`, `peqzone`, `expansion`, `suspendbuffs`, `rain_chance1`, `rain_chance2`, `rain_chance3`, `rain_chance4`, `rain_duration1`, `rain_duration2`, `rain_duration3`, `rain_duration4`, `snow_chance1`, `snow_chance2`, `snow_chance3`, `snow_chance4`, `snow_duration1`, `snow_duration2`, `snow_duration3`, `snow_duration4`, `gravity`, `type`, `skylock`, `fast_regen_hp`, `fast_regen_mana`, `fast_regen_endurance`, `npc_max_aggro_dist`, `min_expansion`, `max_expansion`, `max_movement_update_range`)
VALUES
# The Burning Lands
	('aalishai', 819, '', 'Aalishai', NULL, -74, 71, 4, 0, 0, 0, 48, 0, 0, 0, 1, '', -332, 50, 1450, 10, 1450, 20, 50, 80, 1, 0, 1.13, 0.4, 5, 50, 80, 20, 10, 450, 50, 80, 20, 10, 450, 50, 80, 20, 10, 450, 50, 80, 20, 10, 450, 0.33, '', 1, 1, 1, 1, 0, 0, 3600000, 1, 1, 0, 10, 15, 5, 10, 4, 10, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, 0, 0, 180, 180, 180, 600, 25, 0, 600),
    ('stratos', 818, '', 'Stratos', NULL, -74, 71, 4, 0, 0, 0, 48, 0, 0, 0, 1, '', -332, 50, 1450, 10, 1450, 20, 50, 80, 1, 0, 1.13, 0.4, 5, 50, 80, 20, 10, 450, 50, 80, 20, 10, 450, 50, 80, 20, 10, 450, 50, 80, 20, 10, 450, 0.33, '', 1, 1, 1, 1, 0, 0, 3600000, 1, 1, 0, 10, 15, 5, 10, 4, 10, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0.4, 0, 0, 180, 180, 180, 600, 25, 0, 600);
    