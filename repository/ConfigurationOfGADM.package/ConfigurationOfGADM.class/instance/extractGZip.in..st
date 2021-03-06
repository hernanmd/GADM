doits
extractGZip: fileRef in: dst
	" If fileRef is a ZIP archive, uncompress its contents in dst and delete it "

	| unzipped |
	(fileRef fullName endsWith: '.gz')
		ifFalse: [ ^ self ].
	unzipped := GZipReadStream unzip: fileRef basename to: dst.
	(Smalltalk hasClassNamed: #OSProcess)
		ifTrue: [ 
			(Smalltalk at: #OSProcess) thisOSProcess waitForCommandOutput: 'tar xvf ' , unzipped asFileReference fullName.
			fileRef delete.
			unzipped asFileReference delete ]
