as yet unclassified
loadPresentation

	| presentations presentationName |
	presentations := (FileDirectory default / 'PSPresentations') directoryNames.
	presentationName := UIManager default
		chooseFrom: presentations
		values: presentations
		title: 'Which presentation do you want me to load?'.
	presentationName ifNotNil: [self loadPresentationFromDirectory: FileDirectory default / 'PSPresentations' / presentationName]
	