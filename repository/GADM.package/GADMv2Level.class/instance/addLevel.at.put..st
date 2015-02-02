accessing
addLevel: anInteger at: typeString put: namesString
	" Private - Add subdivision data found for level anInteger, including typeString and namesString data "

	anInteger = 1
		ifTrue: [ 
			 self levels 
				detect: [ : lev | lev mainName = namesString first ]
				ifFound: [ : lev | currentLevels := lev ]				
				ifNone: [ self addInfo: namesString toLevel: (self addLevelRecord: anInteger at: typeString levelDepth: self) ] ]
		ifFalse: [ 
			 self currentLevels levels
				detect: [ : lev | lev mainName = namesString first ]
				ifFound: [ : lev | currentLevels := lev ]				
				ifNone: [ self addInfo: namesString toLevel: (self addLevelRecord: anInteger at: typeString levelDepth: self currentLevels) ] ]