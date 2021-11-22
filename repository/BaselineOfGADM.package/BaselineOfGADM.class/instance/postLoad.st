baselines
postLoad

	#('gadm2_dbf.zip' 'gadm2_dbf.tar.gz') 
		select: [ : fileName | fileName asFileReference exists ]
		thenDo: [ : fileRef | fileRef ensureDelete ]