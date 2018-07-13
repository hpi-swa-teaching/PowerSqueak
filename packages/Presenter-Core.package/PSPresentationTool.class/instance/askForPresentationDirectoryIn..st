presentation saving
askForPresentationDirectoryIn: aFileDirectory

	| presentationName directory  |
	presentationName := self askForPresentationName.
	"Pressing cancel returns an empty string, so we have to check"
	presentationName ifEmpty: [^ nil].
	directory := aFileDirectory / presentationName.
	^ directory exists 
		ifTrue: [self validateUsageOf: presentationName inDirectory: aFileDirectory]
		ifFalse: [directory assureExistence]