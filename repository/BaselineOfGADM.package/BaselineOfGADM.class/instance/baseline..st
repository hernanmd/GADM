baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #preLoad;
				postLoadDoIt: #postLoad;

				baseline: 'NeoCSV' with: [ spec repository: 'github://svenvc/NeoCSV/repository' ];
				package: 'GADM' with: [ spec requires: #('NeoCSV') ];
				package: 'GADM-Tests' with: [ spec requires: #('GADM') ];
				
				group: 'default' with: #('Core' 'Tests');
				group: 'Core' with: #('GADM');
				group: 'Tests' with: #('GADM' 'GADM-Tests') ]