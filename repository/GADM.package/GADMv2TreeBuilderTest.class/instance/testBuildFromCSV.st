tests-accessing
testBuildFromCSV

	self tree: self treeBuilder buildFromCSV.
	self assert: (tree isKindOf: Dictionary).
	self deny: tree isEmpty.
	self assert: (tree allSatisfy: [ : e | e isKindOf: GADMv2Node ]).

	