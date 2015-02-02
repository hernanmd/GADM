accessing
readAllSecondLevelsIn: firstLevelName
	" Answer a <Collection> of <String>  "
	
	| answer gadm typesToQuery | 

	answer := OrderedCollection new.
	typesToQuery := self readSecondLevelTypesIn: firstLevelName.
	gadm := self gadmDBase
			noFilter;
			addFilter: [ : xBaseFile | (xBaseFile atFieldName: 'NAME_1') = firstLevelName ];
			yourself.
	answer := typesToQuery collect: [ : levelTypeName | 
		levelTypeName -> (gadm
			addFilter: [ : xBaseFile | (xBaseFile atFieldName: 'ENGTYPE_2') = levelTypeName ];	
			evaluateFilters;
			collect: [ : xBaseFile | xBaseFile atFieldName: 'NAME_2' ]) ].
	^ answer 
