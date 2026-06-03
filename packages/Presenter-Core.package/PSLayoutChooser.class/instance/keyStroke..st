event handling
keyStroke: anEvent

	anEvent keyCharacter = Character escape
		ifTrue: [self close]