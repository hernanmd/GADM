tests-accessing
testNames

	self assert: ((self worldTree @ 'France' @ 'Basse-Normandie') names includesAllOf: #('Lower Normandy'  'Baja Normand+¡a')).