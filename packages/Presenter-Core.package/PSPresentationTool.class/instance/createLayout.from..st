menu bar
createLayout: aString from: aSlide

	self slideContainer removeSelectionDuring:
		[self presentation addLayout: aSlide duplicate withName: aString]
	