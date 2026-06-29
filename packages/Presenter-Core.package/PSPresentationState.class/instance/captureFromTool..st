capturing
captureFromTool: aPSPresentationTool

	self slides: aPSPresentationTool presentation slides copy.
	self currentSlideNumber: aPSPresentationTool currentSlideNumber