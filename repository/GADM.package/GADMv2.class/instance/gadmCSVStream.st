private
gadmCSVStream
	" Answer a <Stream> referencing the receiver's data set "

	^ self fileName asFileReference readStream