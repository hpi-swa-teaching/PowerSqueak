event handling
doubleClick: evt

	| textMorph |
  evt redButtonPressed
		ifTrue: [
			textMorph := PSTextMorph new
				color: self color;
				center: evt position;
				yourself.
			textMorph adjustToSlideBackground: self.
			self addContentUndoably: textMorph]
