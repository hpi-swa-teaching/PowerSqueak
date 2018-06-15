events-processing
filterEvent: evt for: aMorphOrNil
	
	self isInteractive
		ifFalse: [self in: self presentationShortcuts tryToEvaluate: evt.
			 evt ignore].
	
	^ evt