accessing
@ countryName

	^ self 
		at: countryName 
		ifAbsent: [ self error: 'Country name ' , countryName asString , ' not found' ]