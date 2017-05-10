tests-accessing
testLevelNumber

	self assert: (self worldTree @ 'Serbia') levelNumber = 0.
	self assert: (self worldTree @ 'Jamaica' @ 'Portland') levelNumber = 1.
	self assert: (self worldTree @ 'India' @ 'Orissa' @ 'Ganjam') levelNumber = 2.	
	self assert: (self worldTree @ 'Finland' @ 'Oulu' @ 'Kainuu' @ 'Kajaani') levelNumber = 3.	

	self should: [ (self worldTree @ 'Unexistent') levelNumber ] raise: Error.
	