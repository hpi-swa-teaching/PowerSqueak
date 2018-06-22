events-processing
filterEvent: evt for: aMorphOrNil
	
	self isInteractive
		ifFalse: [
			(evt isKeyboard and: [evt isKeystroke])
				ifTrue: [self in: self presentationShortcuts tryToEvaluate: evt].
			 evt ignore].
	
	^ evt