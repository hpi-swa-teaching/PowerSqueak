ui
askForPresentationDirectoryIn: aFileDirectory

	| presentationName directory  |
	presentationName := self askForPresentationName.
	presentationName ifEmpty: [^ nil]. "check for cancel"
	directory := aFileDirectory / presentationName.
	^ directory exists 
		ifTrue: [self validateUsageOf: presentationName inDirectory: aFileDirectory]
		ifFalse: [directory assureExistence]