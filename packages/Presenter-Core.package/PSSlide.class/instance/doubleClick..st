event handling
doubleClick: evt

	evt redButtonPressed
		ifTrue: [| textMorph |
			textMorph := PSTextMorph new
				color: self color;
				center: evt position;
				yourself.
			textMorph adjustToSlideBackground: self.
			self addContent: textMorph]
