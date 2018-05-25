events-processing
keyStroke: evt

	evt keyCharacter caseOf: {
		[Character escape] -> [self model disablePresentationMode].
		[Character arrowRight] -> [self model nextSlide].
		[Character arrowLeft] -> [self model previousSlide].
		[Character pageUp] -> [self model previousSlide].
		[Character pageDown] -> [self model nextSlide]}
	otherwise: [
		evt keyCharacter isDigit
			ifTrue: [self model selectSlide: evt keyCharacter digitValue]]
