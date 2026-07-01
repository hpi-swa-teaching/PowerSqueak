run button
addRunButton

	| aRunButton |
	aRunButton := PSRunButton new
		fontSize: self selectionFontSize * self textScale;
		yourself.
	
	self
		addMorph: aRunButton;
		runButton: aRunButton;
		repositionButton