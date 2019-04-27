baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #preLoad;		

				baseline: 'NeoCSV' with: [ spec repository: 'github://svenvc/NeoCSV/repository' ];
				package: 'GADM-Core' with: [ spec requires: #('NeoCSV') ];
				package: 'GADM-Tests' with: [ spec requires: #('GADM-Core') ];
				
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('GADM-Core');
				group: 'tests' with: #('GADM-Core' 'GADM-Tests') ]