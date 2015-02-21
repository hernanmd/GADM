accessing
nodeNames
	" Answer a sorted <Collection> with receiver's node (sublevel) names "
	
	^ (self nodes collect: #mainName) asSortedCollection