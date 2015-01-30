accessing
readLevel: levelNumber
	" Answer a <Collection> with all names in levelNumber "

	| levelName |
	
	levelName := 'NAME_' , levelNumber.
	^ self readDBaseLevel: levelName
	