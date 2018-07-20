presentation serialization
loadPresentation

	| presentations presentationName |
	self
		warn: self riskyOperationMessage
		trueChoice: []
		falseChoice: [^ self].
	presentations := self defaultDirectory directoryNames.
	presentationName := UIManager default
		chooseFrom: presentations
		values: presentations
		title: 'Which presentation do you want me to load?'.
	presentationName ifNotNil: [self loadPresentationFromDirectory: self defaultDirectory  / presentationName].
	"self updateSlideNumbers"
	