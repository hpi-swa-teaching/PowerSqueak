slide miniatures
updatePresentation: aPSPresentation withErrorReport: aString

	self 
		presentation: aPSPresentation;
		selectSlideAt: 1;
		updateSlideMiniaturesCompletely.
	UIManager inform: aString