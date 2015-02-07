baselines
baseline02: spec
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec preLoadDoIt: #preLoad.
		spec repository: 'http://smalltalkhub.com/mc/hernan/GADM/main/'.
		spec project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/' ].
		spec package: 'GADM'. ].
