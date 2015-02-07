private
addNodeAtLevel: anInteger typeString: typeString names: namesString
	" Private - Add subdivision data found for level anInteger, including typeString and namesString data "

	anInteger = 1
		ifTrue: [ 
			 self nodes 
				detect: [ : lev | lev mainName = namesString first ]
				ifFound: [ : lev | currentLevels := lev ]				
				ifNone: [ self addVarNames: namesString toNode: (self addNodeTo: self atDepth: anInteger typeName: typeString) ] ]
		ifFalse: [ 
			 self currentLevels nodes
				detect: [ : lev | lev mainName = namesString first ]
				ifFound: [ : lev | currentLevels := lev ]				
				ifNone: [ self addVarNames: namesString toNode: (self addNodeTo: self currentLevels atDepth: anInteger typeName: typeString) ] ]