slide management
basicMoveSlide: aSlide to: aNumber

	self presentation moveSlideAt: aSlide slideNumber to: aNumber.
	self selectSlideAt: aNumber.
	self miniatureController updateSlideMiniatures.
	^ aSlide