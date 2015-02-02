accessing
records
	^ records
		ifNil: [ records := Dictionary new ]