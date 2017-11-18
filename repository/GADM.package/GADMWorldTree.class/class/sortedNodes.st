accessing
sortedNodes
	" Answer a <SortedCollection> of <GADMv2Node> "

	^ self allNodes sort: [ : a : b | a mainName < b mainName ]