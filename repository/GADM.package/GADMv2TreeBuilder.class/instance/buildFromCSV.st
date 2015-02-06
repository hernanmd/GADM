accessing
buildFromCSV
	" Answer a <Dictionary> containing level 0 (country) world regions "

	self buildRecordsFromCSV.
	^ self records.

