baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/hernan/GADM/main/'.
		spec 
			project: 'NeoCSV' with: [
				spec
					className: #ConfigurationOfNeoCSV;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/';
					repository: 'http://smalltalkhub.com/mc/SvenVanCaekenberghe/Neo/main/' ];
			project: 'XBase' with: [
				spec
					className: #ConfigurationOfXBase;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/hernan/XBase/main/' ].
		spec package: 'GADM'. ].
