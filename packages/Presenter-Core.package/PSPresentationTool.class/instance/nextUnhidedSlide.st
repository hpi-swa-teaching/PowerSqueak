slide management
nextUnhidedSlide

	self currentSlideNumber to: self slideCount do: [:counter | (self presentation slideAt: self currentSlideNumber + counter) isHidden ifTrue: [^ counter]]