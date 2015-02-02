accessing
readFirstLevelTypesIn: territoryName
	" Answer a <Collection> of <String> describing types present in territoryName. They could be: Province, District, Dependency, Parish, Federal District, State, Territory, Division, Department, Region, Autonomous Region, City, Development Region "
	
	| answer | 

	answer := OrderedCollection new.
	self gadmDBase 
		noFilter;
		addFilter: [ : xBaseFile | (xBaseFile atFieldName: 'NAME_0') = territoryName ];
		evaluateFilters;
		do: [ : xBaseFile | answer add: (xBaseFile atFieldName: 'ENGTYPE_1') ].
	^ answer asSet 
