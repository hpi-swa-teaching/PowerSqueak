event-processing
detachFromPresentation

	self model deleteSlideAt: self slide slideNumber.
	self slide presentation: nil.
	self model: nil