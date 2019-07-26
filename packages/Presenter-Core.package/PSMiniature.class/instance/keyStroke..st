event-processing
keyStroke: evt

	evt isKeyboard 
		ifTrue: [	(self miniatureShortcuts at: evt keyCharacter ifAbsent: []) value]