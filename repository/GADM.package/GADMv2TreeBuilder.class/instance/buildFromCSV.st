accessing
buildFromCSV
	" Answer a <Collection> of <GADMv2Record> with all GADM contents specified in aCollection "

	(NeoCSVReader on: self gadmCSVStream)
		separator: $,;
		skipHeader;
		do: [ : row | 
			self record: (self recordFrom: row).
			self buildRecordFrom: row ].

