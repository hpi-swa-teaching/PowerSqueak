slide management
basicDuplicateSlide: duplicateSlide after: originalSlide

	self slideContainer removeSelectionDuring: [
		self presentation
			addSlide: duplicateSlide
			afterIndex: originalSlide slideNumber.
		self updateSlideMiniatures].
	^ duplicateSlide