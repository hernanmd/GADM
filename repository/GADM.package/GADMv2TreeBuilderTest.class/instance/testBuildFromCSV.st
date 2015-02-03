tests-accessing
testBuildFromCSV

	self tree: self treeBuilder buildFromCSV.
	self assert: (tree isKindOf: GADMv2TreeBuilder).
	