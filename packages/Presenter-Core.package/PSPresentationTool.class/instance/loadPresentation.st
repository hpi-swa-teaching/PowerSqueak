presentation loading
loadPresentation

	| presentations presentationName |
	self
		warn: 'This operation is risky as it might crash your image.', Character cr, 'Do you want me to proceed?'
		trueChoice: []
		falseChoice: [^ self].
	presentations := self defaultDirectory directoryNames.
	presentationName := UIManager default
		chooseFrom: presentations
		values: presentations
		title: 'Which presentation do you want me to load?'.
	presentationName ifNotNil: [self loadPresentationFromDirectory: self defaultDirectory  / presentationName]
	