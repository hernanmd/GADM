accessing
@ aString 
	" Answer a <GADMv2Node> named aString and located at the receiver's sub-nodes.
	Raise an error exception if not found "
	
	^ self nodes detect: [ : level | level includesName: aString ]
