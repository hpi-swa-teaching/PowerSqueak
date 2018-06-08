as yet unclassified
loadPresentation

	| presentations presentationName |
	presentations := self defaultDirectory directoryNames.
	presentationName := UIManager default
		chooseFrom: presentations
		values: presentations
		title: 'Which presentation do you want me to load?'.
	presentationName ifNotNil: [self loadPresentationFromDirectory: self defaultDirectory  / presentationName]
	