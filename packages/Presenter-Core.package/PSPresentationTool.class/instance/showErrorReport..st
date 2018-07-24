notifications
showErrorReport: aDictionary
	| corruptedSlides |
	corruptedSlides := aDictionary select: [ :each | each > 0 ].
	corruptedSlides
		ifEmpty: [ UIManager inform: self successfullLoadText ]
		ifNotEmpty: [ UIManager inform: (self buildErrorReportString: corruptedSlides) ]