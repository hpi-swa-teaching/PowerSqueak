event handling
filterEvent: anEvent for: aMorphOrNil
	
	(self containsPoint: anEvent position) ifTrue: [
		anEvent isMouseDown ifTrue: [
			anEvent yellowButtonPressed ifTrue: [self handleYellowButton: anEvent].
			anEvent redButtonPressed ifTrue:[self handleRedButton: anEvent]]].
	^ anEvent