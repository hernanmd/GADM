private
buildRecordFrom: row 
	" Iterate over row interesting indexes to build GADM record at each level "

	(self gadmLevelIndexesFor: row) doWithIndex: [ : arrayOfIndexes : index |
		(self includesRecordInfo: arrayOfIndexes)
			ifTrue: [ self record 
						addLevel: index at: arrayOfIndexes first 
						put: arrayOfIndexes allButFirst ]
			ifFalse: [ ^ self ] ].

