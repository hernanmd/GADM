accessing
namedNodes
	" Answer a <Collection> of <GADMv2Node> which includes non-empty names "
	
	^ self nodes select: [ : node | node mainName notNil ]