tests-accessing
testAt

	self assert: ((self worldTree @ 'San Marino') nodes isKindOf: Collection).
	self assert: ((self worldTree @ #'San Marino') nodes isKindOf: Collection).	
	self assert: ((self worldTree @ 'Georgia') isKindOf: GADMv2Node).
	self assert: ((self worldTree @ 'georgia') isKindOf: GADMv2Node).
	self assert: ((self worldTree @ 'georgia' @ 'Guria') isKindOf: GADMv2Node).
	self assert: ((self worldTree @ 'United States' @ 'California' @ 'Los Angeles') isKindOf: GADMv2Node).
	self should: [ self worldTree @ String empty ] raise: Error.
	
