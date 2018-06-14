events-processing
keyStroke: evt

	evt keyCharacter caseOf: {
		[Character escape] -> [self model disablePresentationMode].
		[Character arrowLeft] -> [self model previousSlide].	
		[Character arrowRight] -> [self model nextSlide].
		[Character arrowUp] -> [self model previousSlide].
		[Character arrowDown] -> [self model nextSlide].
		[Character pageUp] -> [self model previousSlide].
		[Character pageDown] -> [self model nextSlide]}
	otherwise: [
		evt keyCharacter isDigit
			ifTrue: [self model selectSlide: evt keyCharacter digitValue]]
