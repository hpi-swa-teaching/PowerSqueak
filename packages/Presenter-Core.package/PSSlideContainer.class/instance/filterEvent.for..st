events-processing
filterEvent: evt for: aMorphOrNil
	
	self isInteractive
		ifFalse: [ | shortcuts |
			shortcuts := evt commandKeyPressed
				ifTrue: [self presentationCommandShortcuts]
				ifFalse: [self presentationShortcuts].
			(evt isKeyboard and: [evt isKeystroke])
				ifTrue: [self in: shortcuts tryToEvaluate: evt].
			 evt ignore].
	
	^ evt