printing
addVarNames: varNames toNode: aGADMV2Node
	" varNames is a <Collection> of variant names for aNode "
	" Set the first name in varNames as the main node name.
	Parse remaining names and add them to node names if any "

	varNames notEmpty
		ifTrue: [ 
			aGADMV2Node mainName: varNames first.
			(varNames size = 2 and: [ varNames second notNil ])
				ifTrue: [ aGADMV2Node names: (varNames second findTokens: '|') ] ].
