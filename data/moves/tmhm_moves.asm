; The add_tm and add_hm macros in constants/item_constants.asm simultaneously
; define constants for the item IDs and for the corresponding move values.

TMHMMoves:
; entries correspond to *_TMNUM constants (see constants/item_constants.asm)
	table_width 1, TMHMMoves

; TMs
n = 1
rept NUM_TMS
if n < 10
MOVE_FOR_TM EQUS "TM0{d:n}_MOVE"
else
MOVE_FOR_TM EQUS "TM{d:n}_MOVE"
endc
	db MOVE_FOR_TM
PURGE MOVE_FOR_TM
n = n + 1
endr
	assert_table_length NUM_TMS

; HMs
n = 1
rept NUM_HMS
if n < 10
MOVE_FOR_HM EQUS "HM0{d:n}_MOVE"
else
MOVE_FOR_HM EQUS "HM{d:n}_MOVE"
endc
	db MOVE_FOR_HM
PURGE MOVE_FOR_HM
n = n + 1
endr
	assert_table_length NUM_TM_HM

	db 0 ; end

; unused
	db 0
	db 0
	db 0
