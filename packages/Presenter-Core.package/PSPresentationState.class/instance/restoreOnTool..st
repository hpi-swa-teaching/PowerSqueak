restoring
restoreOnTool: aPSPresentationTool

	aPSPresentationTool presentation slides: slides copy.
	aPSPresentationTool
		selectSlideAt: (currentSlideNumber min: aPSPresentationTool presentation slideCount);
		updateSlideMiniaturesCompletely