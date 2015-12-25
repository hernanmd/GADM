doits
extractZip: fileRef in: dst
	" If fileRef is a ZIP archive, uncompress its contents in dst and delete it "

	| zipArchive |
	(fileRef fullName endsWith: '.zip')
		ifFalse: [ ^ self ].
	zipArchive := ZipArchive new.
	[ zipArchive
		readFrom: fileRef fullName;
		extractAllTo: dst ]
		ensure: [ zipArchive close ].
	fileRef delete