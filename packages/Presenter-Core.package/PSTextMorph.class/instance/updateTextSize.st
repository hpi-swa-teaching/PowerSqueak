scaling
updateTextSize	
	
	self textMorph beAllFont: (PSTextMorph DefaultTextStyle fontOfSize: self basicTextSize * self textScale)