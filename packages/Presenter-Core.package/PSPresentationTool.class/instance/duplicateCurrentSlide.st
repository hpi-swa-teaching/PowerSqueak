slide management
duplicateCurrentSlide

	| newSlide |
	self slideContainer removeSelectionDuring:
		[newSlide := self currentSlide copy.
		newSlide updateSlideContainer: self slideContainer.
		self presentation 
			addSlide: newSlide
			afterIndex: self currentSlideNumber.
		self updateSlideMiniatures.]