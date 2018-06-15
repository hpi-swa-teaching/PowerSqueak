events-processing
keyStroke: evt

	| shortcuts |
	shortcuts := self model presentationMode
		ifTrue: [self presentationShortcuts]
		ifFalse: [self presentationCreationShortcuts].
		
	self in: shortcuts tryToEvaluate: evt
	"evt keyCharacter caseOf: {
		[Character escape] -> [self model disablePresentationMode].
		[Character arrowRight] -> [self model nextSlide].
		[Character arrowLeft] -> [self model previousSlide].
		[Character pageUp] -> [self model previousSlide].
		[Character pageDown] -> [self model nextSlide].
		[$i] -> [self toggleInteractivity]}
	otherwise: [
		evt keyCharacter isDigit
			ifTrue: [self model selectSlide: evt keyCharacter digitValue]]"
