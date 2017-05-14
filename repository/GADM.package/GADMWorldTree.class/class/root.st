accessing
root
	" Answer the receiver's records contained in a <Dictionary> "
	
	^ GADMv2Node new
		levelNumber: 0;
		nodes: self uniqueInstance nodes;
		yourself
		

	