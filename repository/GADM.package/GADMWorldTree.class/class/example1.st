examples
example1

	| world ds |
	world := GADMWorldTree sortedNodes.

	ds := FTTreeDataSource
		roots: world
		children: [ : data | data nodes sort: [ :a :b | a name < b name ]  ].

	FTTableMorph new
		extent: 300 @ 400;
		dataSource: ds;
		openInWindow
