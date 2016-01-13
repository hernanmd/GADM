tests-accessing
testTypeName

	" GADM does not include level 0 textual types"
	self assert: (self worldTree @ 'Serbia') typeName isNil.
	self assert: (self worldTree @ 'Argentina' @ 'Buenos Aires') typeName = 'Province'.	
	self assert: (self worldTree @ 'Jamaica' @ 'Portland') typeName = 'Parish'.
	self assert: (self worldTree @ 'India' @ 'Odisha' @ 'Ganjam') typeName = 'District'.	
	self assert: (self worldTree @ 'Finland' @ 'Oulu' @ 'Kainuu' @ 'Kajaani') typeName = 'Sub-Region'.	