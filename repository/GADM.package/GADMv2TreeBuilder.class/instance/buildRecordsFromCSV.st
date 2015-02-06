private
buildRecordsFromCSV

	^ (NeoCSVReader on: self gadmCSVStream)
		separator: $,;
		skipHeader;
		do: [ : row | 
			self record: (self recordFrom: row).
			self buildRecordFrom: row ]

