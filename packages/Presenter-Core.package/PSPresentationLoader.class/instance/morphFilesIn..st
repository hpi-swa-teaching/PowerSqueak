slide loading
morphFilesIn: aDirectory
	
	 ^ aDirectory fileNames select: [:fileNames | fileNames endsWith: '.morph' ]