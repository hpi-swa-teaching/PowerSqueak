event-processing
keyStroke: anEvent

	anEvent isKeyboard ifFalse: [^ self].
	anEvent keyCharacter = Character tab ifTrue: [
		anEvent shiftPressed
			ifTrue: [^ self tabOutdent]
			ifFalse: [^ self tabIndent]].
	(self miniatureShortcuts at: anEvent keyCharacter ifAbsent: []) value
