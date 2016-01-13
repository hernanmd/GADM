tests-accessing
testRecords

	self assert: (self treeBuilderRecords isKindOf: Dictionary).
	self assert: self treeBuilderRecords size = 256.
	