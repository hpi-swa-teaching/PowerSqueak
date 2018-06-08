presentation saving
getValidPresentationName: aFileDirectory

	| presentationName directory  |
	presentationName := self askForPresentationName.
	presentationName = ''
		ifTrue: [^ nil].
	directory := (aFileDirectory / presentationName).
	^ directory exists 
		ifTrue: [self validateUsageOf: presentationName inDirectory: aFileDirectory]
		ifFalse: [directory assureExistence]
		