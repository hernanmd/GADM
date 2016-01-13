private
recordFrom: row
	" Answer a <GADMv2Level> record from row. If not present, create it  "

	^ self records 
		at: (row at: 5)
		ifAbsentPut: [ 
			GADMv2Node new 
				mainName: (row at: 5); 
				levelNumber: 0; 
				yourself ]