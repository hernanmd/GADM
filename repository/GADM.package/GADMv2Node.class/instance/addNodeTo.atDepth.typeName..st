printing
addNodeTo: aNode atDepth: anInteger typeName: aString
	" Add and answer a new level node at level number anInteger (in the receiver's tree), with region type named aString "

	| node |
	
	node := GADMv2Node new
				typeName: (aString ifNil: [ 'Unknown' ] ifNotNil: [ aString ]);
				levelNumber: anInteger;
				yourself.
	aNode addNode: node.
	 self currentLevels: node.
	^ node

