printing
addLevelRecord: anInteger at: aString levelDepth: aLevel
	" Add and answer a new level node at level number anInteger (in the receiver's tree), with region type named aString "

	| newLevel |
	
	newLevel := GADMv2Level new
				typeName: (aString ifNil: [ 'Unknown' ] ifNotNil: [ aString ]);
				levelNumber: anInteger;
				yourself.
	aLevel addLevel: newLevel.
	 self currentLevels: newLevel.
	^ newLevel

