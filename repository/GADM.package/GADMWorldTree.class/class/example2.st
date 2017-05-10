examples
example2
	" Include a search bar "

	| world ds |
	world := GADMWorldTree sortedNodes.

	ds := (FTTreeDataSource
		roots: world
		children: [ : data | data nodes sort: [ :a :b | a name < b name ]  ])
			 searchStrategy: #allItems;
			yourself.

	FTTableMorph new
		extent: 300 @ 400;
		dataSource: ds;
		enableFilter;
		explicitFunction;
		openInWindow
