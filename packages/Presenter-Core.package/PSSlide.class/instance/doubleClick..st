event handling
doubleClick: anEvent

	| textMorph |
	anEvent redButtonPressed
		ifTrue: [
			textMorph := PSTextMorph new
				color: self color;
				center: anEvent position;
				yourself.
			textMorph adjustToSlideBackground: self.
			self addContentUndoably: textMorph]
