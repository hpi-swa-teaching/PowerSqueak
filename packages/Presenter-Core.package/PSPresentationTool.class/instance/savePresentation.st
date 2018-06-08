as yet unclassified
savePresentation

	| directory presentationName|
	directory := self defaultDirectory.
	self warn: self riskyOperationMessage trueChoice: [Smalltalk saveSession].
	presentationName := self askForPresentationName.
	directory createDirectory: presentationName.
	directory createDirectory: 'slides'.
	directory := directory / presentationName /'slides'.
	self slides doWithIndex: [:each :index | 
		| directoryName |
		directoryName := 'slide', index asString.
		directory createDirectory: directoryName.
		each saveInDirectory: directory / directoryName ]