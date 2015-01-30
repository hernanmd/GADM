accessing
readType: englishTypename
	" Answer a <Collection> with all names in levelNumber "
	
	| answer |
	answer := OrderedCollection new.
	(XBaseFile on: self fileNameDBase)
		noFilter;
		addFilter: [ : xBaseFile | (xBaseFile atFieldName: 'ENGTYPE_1') = englishTypename ];
		evaluateFilters;
		do: [ : xBaseFile | answer add: (xBaseFile atFieldName: 'NAME_1') ].
answer