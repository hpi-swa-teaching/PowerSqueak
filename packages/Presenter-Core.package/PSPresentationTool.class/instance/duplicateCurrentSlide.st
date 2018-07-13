slide management
duplicateCurrentSlide

	self slides 
			add: self currentSlide copy 
			afterIndex: self currentSlideNumber