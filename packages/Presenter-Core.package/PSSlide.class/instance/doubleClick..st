event handling
doubleClick: evt

	evt redButtonPressed 
		ifTrue: [self addContent: (PSTextMorph new center: evt position)]