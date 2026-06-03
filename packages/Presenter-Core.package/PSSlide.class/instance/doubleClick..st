event handling
doubleClick: evt

	evt redButtonPressed 
		ifTrue: [self addContent: (PSTextMorph new color: self color; center: evt position; yourself)]