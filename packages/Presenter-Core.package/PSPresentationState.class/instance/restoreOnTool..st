restoring
restoreOnTool: aPSPresentationTool

	aPSPresentationTool presentation slides: self slides copy.
	aPSPresentationTool selectSlideAt:
		(self currentSlideNumber min: aPSPresentationTool presentation slideCount).
	aPSPresentationTool miniatureController updateSlideMiniaturesCompletely