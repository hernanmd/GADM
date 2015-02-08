tests-accessing
testBuildFromCSV

	self assert: (self treeBuilderRecords isKindOf: Dictionary).
	self deny: self treeBuilderRecords isEmpty.
	self assert: (self treeBuilderRecords allSatisfy: [ : e | e isKindOf: GADMv2Node ]).

	