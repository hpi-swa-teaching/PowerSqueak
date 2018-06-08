as yet unclassified
buildErrorReportString: aDictionary

	| errorString |
	errorString := 'I could not load all slides completely.'.
	aDictionary keysAndValuesDo: [:key :value |
		errorString := errorString, Character cr, key, ' is missing ', value, ' morph(s).'].
	^ errorString