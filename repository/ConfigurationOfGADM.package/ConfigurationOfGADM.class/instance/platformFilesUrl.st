doits
platformFilesUrl
	" Answer a <String> with download URL "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: 'http://dl.dropboxusercontent.com/u/103833630/';
			nextPutAll: (Smalltalk os isWin32 
						ifTrue: [ 'gadm2_dbf.zip' ]
						ifFalse: [ 'gadm2_dbf.tar.gz' ]) ].