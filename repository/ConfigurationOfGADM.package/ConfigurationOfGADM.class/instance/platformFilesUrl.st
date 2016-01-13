doits
platformFilesUrl
	" Answer a <String> with download URL "

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: 'http://dl.dropboxusercontent.com/u/103833630/';
			nextPutAll: (Smalltalk os isWin32 
						ifTrue: [ 'gadm28_dbf.zip' ]
						ifFalse: [ 'gadm28_dbf.tar.gz' ]) ].