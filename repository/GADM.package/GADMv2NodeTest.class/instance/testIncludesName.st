tests-testing
testIncludesName

	self assert: ((self worldTree @ 'France' @ 'Basse-Normandie') includesName: 'Lower Normandy').
	self assert: ((self worldTree @ 'France' @ 'Basse-Normandie') includesName: 'lower normandy').
	
	self should: [ (self worldTree @ 'France' @ 'Basse Normandie') includesName: 'Lower Normandy' ] raise: NotFound.
