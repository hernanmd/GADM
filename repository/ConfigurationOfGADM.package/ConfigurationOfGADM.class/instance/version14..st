versions
version14: spec
	<version: '1.4' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.4'.
		spec author: 'HernanMoralesDurand'.
		spec timestamp: '3/13/2015 11:35'.
		spec 
			project: 'NeoCSV' with: '12';
			project: 'OSProcess' with: '4.5.12'.
		spec package: 'GADM' with: 'GADM-HernanMoralesDurand.14'. ].
