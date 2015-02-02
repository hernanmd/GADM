accessing
readAllFirstLevelsIn: territoryName
	" Answer a <Collection> of <String>  "
	
	| answer gadm typesToQuery | 

	answer := OrderedCollection new.
	typesToQuery := self readFirstLevelTypesIn: territoryName.
	gadm := self gadmDBase
			noFilter;
			addFilter: [ : xBaseFile | (xBaseFile atFieldName: 'NAME_0') = territoryName ];
			yourself.
	answer := typesToQuery collect: [ : levelTypeName | 
		levelTypeName -> (gadm
			addFilter: [ : xBaseFile | (xBaseFile atFieldName: 'ENGTYPE_1') = levelTypeName ];	
			evaluateFilters;
			collect: [ : xBaseFile | xBaseFile atFieldName: 'NAME_1' ]) ].
	^ answer 
