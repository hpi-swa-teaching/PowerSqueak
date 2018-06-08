presentation loading
showErrorReport: aDictionary

	| corruptedSlides |
	corruptedSlides := 	aDictionary select: [:each | each > 0].
	corruptedSlides isEmpty
		ifTrue: [UIManager inform: 'I successfully loaded the presentation.']
		ifFalse: [UIManager inform: (self buildErrorReportString: corruptedSlides)] 