private
buildRecordFrom: row 
	" Iterate over row interesting indexes to build GADM record at each level "

	(self gadmLevelIndexesFor: row) doWithIndex: [ : arrayOfIndexes : index |
		(self includesRecordInfo: arrayOfIndexes)
			ifTrue: [ self record 
						addNodeAtLevel: index 
						typeString: arrayOfIndexes first 
						names: arrayOfIndexes allButFirst ]
			ifFalse: [ ^ self ] ].

