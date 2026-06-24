slide miniatures
updateSlideMiniatureCompletelyAt: aNumber
 
	self selectSlideAt: aNumber.
	self currentSlide changed.
	self currentSlide world displayWorldSafely.
	self updateCurrentMiniature