private
includesRecordInfo: aCollection
	" Answer <true> if any of the contents in aCollection includes record data "
	
	^ aCollection anySatisfy: #notNil