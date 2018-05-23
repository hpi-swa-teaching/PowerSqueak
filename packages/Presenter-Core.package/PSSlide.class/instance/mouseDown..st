event handling
mouseDown: evt

	super mouseDown: evt.
	evt redButtonPressed ifTrue: [
		self addContent: (PSTextMorph new center: evt position)].
	self fullBounds