run button
addRunButton
	| aRunButton |
	
	aRunButton := PSRunButton new
		action: [self executeCode];
		fontSize:  self selectionFontSize * self textScale;
		yourself.
	
	self addMorph: aRunButton;
		runButton: aRunButton;
		repositionButton.