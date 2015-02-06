accessing
@ territoryName
	" Answer the receiver's <GADMv2Level> named territoryName. Raise an Exception if not found "
	
	^ self root
		at: territoryName capitalized
		ifAbsent: [ self error: 'Territory ' , territoryName asString , ' not found' ]