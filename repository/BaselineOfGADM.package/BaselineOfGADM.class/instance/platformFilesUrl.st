baselines
platformFilesUrl

	^ Array with: (String streamContents: [ : stream |		
		stream 		
			nextPutAll: 'https://github.com/hernanmd/Territorial/raw/master/res/';
			nextPutAll: (
				Smalltalk os isWin32 					
					ifTrue: [ 'gadm2_dbf.zip' ]
					ifFalse: [ 'gadm2_dbf.tar.gz' ]) ])