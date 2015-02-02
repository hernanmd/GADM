accessing-csv
fieldTypeAt: field

	(#(#objectid #id_0 #id_1 #id_2 #id_3 #id_4 #id_5) includes: field asSymbol)
		ifTrue: [ ^ #addIntegerField: ].
	(#(#shape_leng #shape_area) includes: field asSymbol)
		ifTrue: [ ^ #addFloatField: ].
	^ #addSymbolField: