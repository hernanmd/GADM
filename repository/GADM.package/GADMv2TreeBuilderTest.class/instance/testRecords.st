tests-accessing
testRecords

	self tree: self treeBuilder buildFromCSV.
	self assert: (self tree records isKindOf: Dictionary).
	self assert: self tree records notEmpty.
	