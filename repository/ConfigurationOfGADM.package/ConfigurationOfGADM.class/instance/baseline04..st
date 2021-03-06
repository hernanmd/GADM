baselines
baseline04: spec
	<version: '0.4-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec preLoadDoIt: #preLoad.
		spec repository: 'http://smalltalkhub.com/mc/hernan/GADM/main/'.
		spec 
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/' ];
			project: 'OSProcess' with: [
				spec
					className: #ConfigurationOfOSProcess;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo50/main/' ].
		spec package: 'GADM'. ].
