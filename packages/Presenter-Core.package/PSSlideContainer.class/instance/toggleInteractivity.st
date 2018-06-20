presentation mode
toggleInteractivity

	self isInteractive
		ifTrue: [self enableNonInteractiveMode ]
		ifFalse: [self disableNonInteractiveMode ]