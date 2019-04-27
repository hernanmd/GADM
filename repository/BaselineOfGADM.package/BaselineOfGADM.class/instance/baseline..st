baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				preLoadDoIt: #preLoad;
				package: 'GADM-Core' with: [ spec requires: #('Neo-CSV-Core');
				package: 'GADM-Tests' ];
				
				group: 'default' with: #('core' 'tests');
				group: 'core' with: #('GADM-Core');
				group: 'tests' with: #('GADM-Core' 'GADM-Tests') ]