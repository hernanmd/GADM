tests-accessing
testNodes

	self assert: ((self worldTree @ 'Kuwait') nodes isKindOf: Collection).
	self assert: (self worldTree @ 'Kuwait') nodes notEmpty.
	
	self assert: ((self worldTree @ 'Jamaica' @ 'Portland') nodes isKindOf: Collection).
	self assert: (self worldTree @ 'Jamaica' @ 'Portland') nodes isEmpty.

	self assert: ((self worldTree @ 'India' @ 'Odisha' @ 'Ganjam') nodes isKindOf: Collection).
	self assert: (self worldTree @ 'India' @ 'Odisha' @ 'Ganjam') nodes notEmpty.

	self assert: ((self worldTree @ 'Finland' @ 'Oulu' @ 'Kainuu' @ 'Kajaani') nodes isKindOf: Collection).
	self assert: (self worldTree @ 'India' @ 'Odisha' @ 'Ganjam') nodes notEmpty.

	self assert: (self worldTree @ 'Vatican City') nodes isEmpty.
