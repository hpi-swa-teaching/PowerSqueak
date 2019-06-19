slide management
duplicateCurrentSlide

	| newSlide |
	self slideContainer removeSelectionDuring:
		[newSlide := self currentSlide duplicate.
		self presentation 
			addSlide: newSlide
			afterIndex: self currentSlideNumber.
		self updateSlideMiniatures.]