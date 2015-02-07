private
gadmLevelIndexesFor: row
	" Private - Answer a <Collection> which matches the indexes for interesting information in GADM database "
	^ { 
		{ (row at: 12) . (row at: 6) . (row at: 7) } . "ENGTYPE_1" "NAME_1"  "VARNAME_1"
		{ (row at: 23) . (row at: 17) . (row at: 18) } .
		{ (row at: 33) . (row at: 28) . (row at: 29) } .
		{ (row at: 43) . (row at: 38) . (row at: 39) } .
		{ (row at: 50) . (row at: 48) } }.