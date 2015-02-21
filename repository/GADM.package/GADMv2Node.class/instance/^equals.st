comparing
= aGADMv2Node
	"Two GADM nodes are equal if
	 (a) they are the same 'kind' of thing.
	 (b) they have the same main name.
	 (c) they have different sub-nodes "
	
	self == aGADMv2Node 
		ifTrue: [ ^ true ].
	self class = aGADMv2Node class
		ifFalse: [ ^ false ].
	^ self mainName = aGADMv2Node mainName
		and: [ self nodes = aGADMv2Node nodes ]