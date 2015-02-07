private
includesRecordInfo: aCollection
	" Answer <true> if any of the contents in aCollection includes any record data "
	
	^ aCollection anySatisfy: #notNil