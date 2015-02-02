printing
addInfo: varNames toLevel: aLevel

	varNames notEmpty
		ifTrue: [ 
			aLevel mainName: varNames first.
			(varNames size = 2 and: [ varNames second notNil ])
				ifTrue: [ aLevel names: (varNames second findTokens: '|') ] ].
