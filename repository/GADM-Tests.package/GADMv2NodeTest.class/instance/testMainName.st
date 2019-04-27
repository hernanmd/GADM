tests-accessing
testMainName

	self assert: ((self worldTree @ 'Kuwait') mainName isKindOf: String).
	self assert: (self worldTree @ 'Kuwait') mainName = 'Kuwait'.