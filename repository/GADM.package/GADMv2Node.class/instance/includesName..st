testing
includesName: aString
	" Answer <true> if aString is contained in any name in the receiver "

	self mainName asLowercase = aString asLowercase 
		ifFalse: [ 
			(self names notNil and: [ self names notEmpty ])
				ifTrue: [ ^ (self names collect: #asLowercase) includes: aString asLowercase ]
				ifFalse: [ ^ false ] ].
	^ true