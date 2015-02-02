private
recordFrom: row

	^ self records 
		at: (row at: 4)
		ifAbsentPut: [ 
			GADMv2Level new 
				mainName: (row at: 4); 
				levelNumber: 0; 
				yourself ]