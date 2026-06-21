event handling
doubleClick: evt

	evt redButtonPressed 
		ifTrue: [self addContentUndoably: (PSTextMorph new
			color: self color;
			center: evt position;
			yourself)]