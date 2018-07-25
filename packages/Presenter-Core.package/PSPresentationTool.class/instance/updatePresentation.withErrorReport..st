slide miniatures
updatePresentation: aPSPresentation withErrorReport: aDictionary

	self 
		presentation: aPSPresentation;
		selectSlideNumber: 1;
		updateSlideMiniaturesCompletely;
		showErrorReport: aDictionary	