versions
version15: spec
	<version: '1.5' imports: #('0.4-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.5'.
		spec author: 'HernanMoralesDurand'.
		spec timestamp: '25/12/2015 11:35'.
		spec 
			project: 'NeoCSV' with: '12';
			project: 'OSProcess' with: '4.6.4'.
		spec package: 'GADM' with: 'GADM-HernanMoralesDurand.14'. ].
