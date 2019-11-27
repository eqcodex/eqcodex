UPDATE npc_types SET rare_spawn = 1 WHERE id IN (
    # 48 cazicthule
    # Questions:
    # a_razor_tooth_piranha: is it 48226 or 48227? added all
    # a_Tae_Ew_Aggressor: is it 700095, 700081, or 700109? added all
    48017, 48121, 48136, 48223, 48236, 48224, 48225, 48226, 48227, 700095, 700081, 700109, 48232, 48232, 48233, 48235, 48219, 48241, 48242, 48217, 48243
);


# 38 befallen
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 36095; # Priest Amiaz
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 36097; # the thaumaturgist


# 48 cazicthule HUNTER
# a_barbed_scale_piranha
# 'a_disciple_of_Thule',
# 'a_diseased_mosquito',
# 'Dreadfang',
# 'an_enraged_Amygdalan',
# 'an_enraged_disciple',
# 'an_enraged_jungle_raptor',
# 'an_enraged_tiger_raptor',
# 'a_frenzied_shiverback',
# 'a_gelatinous_mass',
# 'a_graystriped_mosquito',
# 'a_gyrating_mass',
# 'an_ooze_covered_ritualist',
# 'a_poisonstrand_hunter',
# 'a_quivering_mass',
# 'a_razor_fin_piranha',
# 'a_rotting_horror',
# 'a_rotting_shiverback',
# 'a_silverflank_shiverback',
# 'Soul_Siphon',
# 'a_swirling_black_mass',
# 'a_swirling_green_mass',
# 'a_swirling_red_mass',
# 'a_Tae_Ew_bloodfiend',
# 'a_Tae_Ew_convert',
# 'a_Tae_Ew_hunter',
# 'a_Tae_Ew_trapper',
# 'a_Tae_Ew_warlord',
# 'a_Tae_Ew_warmaster',
# 'a_Thul_Tae_Ew_adept',
# 'a_Thul_Tae_Ew_crusader',
# 'a_Thul_Tae_Ew_despoiler',
# 'a_Thul_Tae_Ew_ritualist',
# 'a_Thul_Tae_Ew_spirtcaller',
# 'a_Thul_Tae_Ew_torturer',
# 'a_toxic_jungle_hunter',
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 48017; # a_blood_claw_raptor

# 58 crushbone
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 58002; # orc warlord
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 58032; # emporer crush
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 58040; # orc taskmaster
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 58057; # the fabled emporer crush



# 59 mistmoore
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59020; # an avenging caitiff
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59116; # Butler Syncall
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59102; # a cloaked dhampyre
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59151; # Garton Viswin
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59133; # a glyphed ghoul
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59089; # Lasna Cheroon
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59115; # Maid Issis
#Mynthi Davissi or a werewolf gypsy (missing werewolf gypsy)
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 59150; # Mynthi Davissi

# 65 guktop
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65139; # an ancient croc
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65140; # a froglok gaz squire
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65105; # a froglok realist
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65148; # a froglok scryer
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65128; # the froglok shin lord
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65125; # a froglok summoner
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65104; # the froglok warden
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 65146; # a giant heart spider

# 68 butcher
UPDATE npc_types SET rare_spawn = 1, placeholder = '' WHERE id = 68137; # Glubbsink

# 789 charasisb
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (789000, 'Arisen_Gloriant_Kra`du', 'an Arisen steward, an Elevated skeleton', 113, 90000000, 1),
    (789001, 'a_Kar`zok_grave_robber', 'a Krellnakor filcher, a Fereth appraiser', 113, 90000000, 1),
    (789002, 'a_Kar`zok_infiltrator', 'a Krellnakor enforcer, a Wulthan thief, a Krellnakor scavenger, an Arcron lifter', 113, 90000000, 1),
    (789003, 'Xalgoz_the_Arisen', 'an Arisen ritualist, an Exalted spirit', 113, 90000000, 1),
    (789004, 'Ancient_Apparition', 'an Arisen apparition', 113, 90000000, 1);
   
# 792 gorowyn
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (792000, 'Artikla,_Fereth_Despot', 'a Fereth commander', 113, 90000000, 1),
    (792001, 'Elkikatar', 'a Kar\'Zok scourge', 113, 90000000, 1),
    (792002, 'Gnaw', 'a chokidai elder', 113, 90000000, 1),
    (792003, 'Head_Boiler_Akett', 'a soup boiler', 113, 90000000, 1),
    (792004, 'High_Arcron_Zeklor', 'an Arcron burner', 113, 90000000, 1),
    (792005, 'Hissilith,_the_Brittlebones', 'an enslaved skeleton', 113, 90000000, 1),
    (792006, 'Overlord_Klerkon', 'a Krellnakor destroyer', 113, 90000000, 1),
    (792007, 'Overlord_Teralov', 'a Krellnakor terror', 113, 90000000, 1),
    (792008, 'Overlord_Tevik', 'a Krellnakor seeker', 113, 90000000, 1),
    (792009, 'Rekatok_One-Eye', 'an aging pit fighter', 113, 90000000, 1),
    (792010, 'The_Magmalisk', 'a hungry lavalisk', 113, 90000000, 1),
    (792011, 'Wulthan_High_Inquisitor_Kraz', 'a Wulthan administrator', 113, 90000000, 1),
    (792012, 'Fereth_Captain_Ordran', 'a fereth captain', 113, 90000000, 1),
    (792013, 'Wulthan_Elder_Priest_Ovun', 'a wulthan priest', 113, 90000000, 1);

# 813 charasistwo
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (813000, 'Deka_the_Reaper', 'a specter of the Arisen', 113, 90000000, 1),
    (813001, 'Embalming_Goo', 'Arisen bones', 113, 90000000, 1),
    (813002, 'General_V`Deers,_the_Arisen', 'an Arisen officer', 113, 90000000, 1),
    (813003, 'Nureya_Arisen', 'a specter of the Arisen', 113, 90000000, 1),
    (813004, 'Shandral_Arisen', 'an arisen convert', 113, 90000000, 1),
    (813005, 'The_Arisen_Admiral_Tylix', 'a specter of the Arisen', 113, 90000000, 1),
    (813006, 'The_Arisen_Dragoon_T`Vem', 'a specter of the Arisen', 113, 90000000, 1),
    (813007, 'The_Arisen_Dragoon_T`Vex', 'Arisen bones', 113, 90000000, 1),
    (813008, 'The_Great_Sentinel', 'a specter of the Arisen', 113, 90000000, 1),
    (813009, 'The_Underlord', 'a bottomless gnawer', 113, 90000000, 1),
    (813010, 'Tormented_Adalora', 'a specter of the Arisen', 113, 90000000, 1),
    (813011, 'Vermistipus', 'a specter of the Arisen', 113, 90000000, 1),
    (813012, 'Arisen_Fenistra', 'an Arisen ghost', 113, 90000000, 1),
    (813013, 'Arisen_Mentor_Sishallan', 'an Arisen mentor', 113, 90000000, 1);

# 814 skyfiretwo
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (814000, 'an_Arcron_researcher', 'a Krellnakor scout', 113, 90000000, 1),
    (814001, 'Chirurgeon_Hemofax', 'an ashen scalpel, an ashen cutter', 113, 90000000, 1),
    (814002, 'Dragoflux', 'a raging vortex, a sturdy magmite', 113, 90000000, 1),
    (814003, 'a_feverish_marauder', 'a zealot', 113, 90000000, 1),
    (814004, 'Mawmun', 'a gluttonous feaster, a greedy gnawer', 113, 90000000, 1),
    (814005, 'Old_Raspy', 'an old wurm', 113, 90000000, 1),
    (814006, 'a_rabid_reveler', 'a brazen Chetari, a drunken Chetari', 113, 90000000, 1),
    (814007, 'Rirwech_the_Fink', 'a suspicious Chetari, a furtive Chetari', 113, 90000000, 1),
    (814008, 'Ritualist_Bomoda', 'a grim cultist, a grim chanter', 113, 90000000, 1),
    (814009, 'a_scree-borne_magmite', 'wrathful rubble, a blackened tyro', 113, 90000000, 1),
    (814010, 'Shardstubble', 'a fractured magmite, a fragile tyro', 113, 90000000, 1),
    (814011, 'Skrizix', 'an exotic chromedrac', 113, 90000000, 1),
    (814012, 'a_supercharged_tyro', 'a volatile effusion, a stubborn magmite', 113, 90000000, 1),
    (814013, 'The_Crimson_Sentinel', 'an angry Arcron', 113, 90000000, 1),
    (814014, 'The_Gatekeeper', 'a Krellnakor bodyguard, a Krellnakor doorman', 113, 90000000, 1),
    (814015, 'Ash_Guardian_Tolemak', 'a guardian wurm', 113, 90000000, 1),
    (814016, 'Radiant_Overseer_Triluan', 'a radiant drake', 113, 90000000, 1);

# 815 overtheretwo
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (815000, 'Banshee', 'a screeching chokidai', 113, 90000000, 1),
    (815001, 'Bloodstalker', 'a blood-stained stalker', 113, 90000000, 1),
    (815002, 'a_bluff_golem', 'a rocky cliff golem', 113, 90000000, 1),
    (815003, 'Drakis', 'a dreadful scorpikis', 113, 90000000, 1),
    (815004, 'Fang', 'a stonepeep cockatrice', 113, 90000000, 1),
    (815005, 'a_grotesque_succulent', 'a sickly succulent', 113, 90000000, 1),
    (815006, 'an_iron_sentinel', 'a rubble golem', 113, 90000000, 1),
    (815007, 'Janissary_Virzak', 'a Wulthan Zealot', 113, 90000000, 1),
    (815008, 'a_Kar`Zok_lacerator', 'a Ferreth procurator', 113, 90000000, 1),
    (815009, 'a_majestic_cockatrice', 'a stoneglint cockatrice', 113, 90000000, 1),
    (815010, 'Myrmidon_Tundak', 'a Krellnakor officer', 113, 90000000, 1),
    (815011, 'Needle', 'a needle-covered succulent', 113, 90000000, 1),
    (815012, 'Observer_Eyrzekla', 'a mysterious sarnak', 113, 90000000, 1),
    (815013, 'Rigelon_the_Watcher', 'a shifty scorpikis', 113, 90000000, 1),
    (815014, 'Saber', 'a raging rhino', 113, 90000000, 1),
    (815015, 'Arcron_Thaumaturge_Osellik', 'an arcron thaumaturge', 113, 90000000, 1),
    (815016, 'Flamescale_Overlord_Takarious', 'a Krellnakor overlord', 113, 90000000, 1);

# 816 veeshantwo
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (816000, 'Blood-Thirsty_Racnar', 'a frenetic racnar', 113, 90000000, 1),
    (816001, 'Elder_Azeron', 'an ancient flame protector', 113, 90000000, 1),
    (816002, 'Elder_Ekron', '', 113, 90000000, 1),
    (816003, 'Ellarr_Stormcloud', '', 113, 90000000, 1),
    (816004, 'Kluzen_the_Protector', '', 113, 90000000, 1),
    (816005, 'Magma_Basilisk', 'a magma basilisk', 113, 90000000, 1),
    (816006, 'Milyex_Vioren', '', 113, 90000000, 1),
    (816007, 'Qunard_Ashenclaw', 'a primeval cinder skyclaw', 113, 90000000, 1),
    (816008, 'Travenro_the_Skygazer', '', 113, 90000000, 1);

# 818 stratos
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (818000, 'Cloud_Iron_Lance', 'an abundant gale', 113, 90000000, 1);

# 819 aalishai



