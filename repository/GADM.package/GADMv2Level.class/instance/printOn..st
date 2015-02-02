printing
printOn: aStream

	aStream
		nextPut: $[;
		nextPutAll: self levelNumber asString;
		nextPut: $];
		space;
		nextPut: $(;
		nextPutAll: self mainName asString;
		nextPut: $)
		