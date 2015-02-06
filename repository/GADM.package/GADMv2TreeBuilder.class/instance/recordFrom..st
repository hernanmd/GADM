private
recordFrom: row
	" Answer a <GADMv2Level> record from row. If not present, create it  "

	^ self records 
		at: (row at: 4)
		ifAbsentPut: [ 
			GADMv2Node new 
				mainName: (row at: 4); 
				levelNumber: 0; 
				yourself ]