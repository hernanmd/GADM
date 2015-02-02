accessing-csv
readCsvRecords: aCollection
	" Answer a <Collection> of <GADMv2Record> with all GADM contents specified in aCollection "

	| reader |
	
	reader := (NeoCSVReader on: self gadmCSVStream)
		separator: $,;
		skipHeader;
		recordClass: GADMv2CSVRecord.
	aCollection do: [ : field |
		 reader perform: (self fieldTypeAt: field) with: field ].
	^ reader upToEnd