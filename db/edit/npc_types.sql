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


# 818 stratos
INSERT INTO npc_types (id, name, placeholder, level, hp, rare_spawn)
VALUES
    (818000, 'Cloud_Iron_Lance', 'an abundant gale', 113, 90000000, 1);

# 819 aalishai


