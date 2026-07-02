layouts
createLayout: aString from: aSlide

	self tool slideContainer removeSelectionDuring:
		[self tool presentation addLayout: aSlide duplicate withName: aString]