slide miniatures
updatePresentation: aPSPresentation

	self
		presentation: aPSPresentation;
		selectSlideAt: 1.
	self miniatureController updateSlideMiniaturesCompletely.
	self clearCommandHistory