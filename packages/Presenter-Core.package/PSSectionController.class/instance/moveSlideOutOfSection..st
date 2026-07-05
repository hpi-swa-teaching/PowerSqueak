section editing
moveSlideOutOfSection: aSlide

	self presentation truncateSectionAt: aSlide.
	self miniatureController updateSlideMiniatures