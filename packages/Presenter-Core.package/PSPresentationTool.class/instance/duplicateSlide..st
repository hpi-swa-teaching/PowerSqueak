slide management
duplicateSlide: aSlide

	self slideContainer removeSelectionDuring:
		[self presentation 
			addSlide: aSlide duplicate
			afterIndex: aSlide slideNumber.
		self updateSlideMiniatures.]