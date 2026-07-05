slide management
selectSlideAt: aNumber

	self currentSlideNumber: (self clampSlideNumber: aNumber).
	self slideContainer showSlide: self currentSlide.
	(self presentation isSlideHiddenByCollapseAt: self currentSlideNumber)
		ifTrue: [
			self presentation
				expandSectionsContainingSlideAt: self currentSlideNumber.
			self miniatureController updateSlideMiniatures].
	self miniatureController highlightCurrentMiniature.
	self currentSlide enter