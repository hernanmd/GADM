versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'HernanMoralesDurand'.
		spec timestamp: '2/6/2015 01:32'.
		spec 
			project: 'NeoCSV' with: '11';
			project: 'XBase' with: '1.0'.
		spec package: 'GADM' with: 'GADM-HernanMoralesDurand.10'. ].
