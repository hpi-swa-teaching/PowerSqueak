slide management
duplicateCurrentSlide

	| newSlide |
	self slideContainer removeSelectionDuring:
		[newSlide := self currentSlide duplicate.
		newSlide updateSlideContainer: self slideContainer.
		self presentation 
			addSlide: newSlide
			afterIndex: self currentSlideNumber.
		self updateSlideMiniatures.]