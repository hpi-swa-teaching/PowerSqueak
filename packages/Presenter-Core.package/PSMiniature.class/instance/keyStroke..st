event-processing
keyStroke: evt

	evt isKeyboard ifFalse: [^ self].
	evt keyCharacter = Character tab ifTrue: [
		evt shiftPressed
			ifTrue: [^ self tabOutdent]
			ifFalse: [^ self tabIndent]].
	(self miniatureShortcuts at: evt keyCharacter ifAbsent: []) value
