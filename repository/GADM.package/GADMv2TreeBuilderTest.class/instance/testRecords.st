tests-accessing
testRecords

	self assert: (self tree records isKindOf: Dictionary).
	self assert: self tree records notEmpty.
	