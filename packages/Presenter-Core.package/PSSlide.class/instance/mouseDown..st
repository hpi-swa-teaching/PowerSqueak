event handling
mouseDown: evt

	super mouseDown: evt.
	self owner removeSelection.
	evt redButtonPressed 
		ifTrue: [self waitForDoubleClick: evt]