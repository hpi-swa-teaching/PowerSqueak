notifications
showErrorReport: aDictionary

	| corruptedSlides |
	corruptedSlides := 	aDictionary select: [:each | each > 0].
	corruptedSlides
		ifEmpty: [UIManager inform: 'I successfully loaded the presentation.']
		ifNotEmpty: [UIManager inform: (self buildErrorReportString: corruptedSlides)] 