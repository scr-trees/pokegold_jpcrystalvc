	db GYARADOS ; 130

	db  95, 125,  79,  81,  60, 100
	;   hp  atk  def  spd  sat  sdf

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 5 ; step cycles to hatch
	db 5 ; unknown 2
IF DEF(_GOLD)
	INCBIN "gfx/pokemon/gyarados/front_gold.dimensions"
ELIF DEF(_SILVER)
	INCBIN "gfx/pokemon/gyarados/front_silver.dimensions"
ENDC
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, ROCK_SMASH, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, DRAGONBREATH, THUNDER, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, FIRE_BLAST, REST, ATTRACT, SURF, STRENGTH, WHIRLPOOL, WATERFALL, FLAMETHROWER, THUNDERBOLT, ICE_BEAM
	; end
