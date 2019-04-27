baselines
platformFilesUrl

	^ Array with: (String streamContents: [ : stream |		
		stream 		
			nextPutAll: 'https://github.com/hernanmd/Territorial/raw/master/res/';
			nextPutAll: (
				Smalltalk os isWin32 					
					ifTrue: [ 'gadm28_dbf.zip' ]
					ifFalse: [ 'gadm28_dbf.tar.gz' ]) ])