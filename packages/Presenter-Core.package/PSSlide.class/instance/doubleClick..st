event handling
doubleClick: anEvent

	anEvent redButtonPressed ifTrue: [
		self addContent: (PSTextMorph new
			center: anEvent position;
			yourself)]