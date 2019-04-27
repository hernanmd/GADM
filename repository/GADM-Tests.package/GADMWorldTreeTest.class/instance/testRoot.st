tests-accessing
testRoot

	self assert: (self worldTree root isKindOf: Dictionary).
	self deny: self worldTree root isEmpty.
