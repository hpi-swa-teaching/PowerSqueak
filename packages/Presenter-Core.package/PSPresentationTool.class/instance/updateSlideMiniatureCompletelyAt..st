slide miniatures
updateSlideMiniatureCompletelyAt: aNumber

	self selectSlideAt: aNumber.
	self currentSlide redrawLater.
	self currentSlide world displayWorldSafely.
	self updateCurrentMiniature