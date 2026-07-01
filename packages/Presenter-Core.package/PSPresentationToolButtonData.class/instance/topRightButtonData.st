button data
topRightButtonData

	^ {
		self undoButtonData.
		self redoButtonData.
		self snapButtonData.
		self snapOptionsButtonData.
		self presentationModeButtonData.
		self presentationModeOptionsButtonData.
	}