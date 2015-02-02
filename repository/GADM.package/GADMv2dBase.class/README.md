Using dbf file

GADMv2dBase new readFirstLevelTypesIn: 'France'.		" a Set('Region') "
GADMv2dBase new readFirstLevelTypesIn: 'United States'.	" a Set('State' 'Federal District')"	
		
GADMv2dBase new readAllFirstLevelsIn: 'Argentina'.
GADMv2dBase new readAllSecondLevelsIn: 'Buenos Aires'.

GADMv2dBase new readAllFirstLevelsIn: 'United States'.
GADMv2dBase new readAllSecondLevelsIn: 'California'.