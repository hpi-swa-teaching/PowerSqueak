event handling
mouseDown: evt

	super mouseDown: evt.
	evt redButtonPressed 
		ifTrue: [self waitForDoubleClick: evt].
	"self fullBounds"