event handling
doubleClick: evt

	| textMoprh |
  evt redButtonPressed
		ifTrue: [
			textMorph := PSTextMorph new
				color: self color;
				center: evt position;
				yourself.
			textMorph adjustToSlideBackground: self.
			self addContentUndoably: textMorph]
