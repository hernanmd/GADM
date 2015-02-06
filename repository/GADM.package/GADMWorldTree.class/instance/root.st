accessing
root
	" Answer a <Collection> of <GADMv2Record> with all GADM contents specified in aCollection "

	^ root
		ifNil: [ root := GADMv2TreeBuilder new buildFromCSV ]