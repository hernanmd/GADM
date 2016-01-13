private
gadmLevelIndexesFor: row
	" Private - Answer a <Collection> which matches the indexes for interesting information in GADM database "
	^ { 
		{ (row at: 14) . (row at: 7) . (row at: 8) } . "ENGTYPE_1" "NAME_1"  "VARNAME_1"
		{ (row at: 26) . (row at: 19) . (row at: 20) } .
		{ (row at: 38) . (row at: 31) . (row at: 32	) } .
		{ (row at: 48) . (row at: 43) . (row at: 44) } .
		{ (row at: 57) . (row at: 53) } }.