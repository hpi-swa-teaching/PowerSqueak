event-processing
startDrag: evt

	evt hand grabMorph: self.
	self model ifNotNil:
		[self model deleteSlideAt: self slide slideNumber.
		self model: nil].
	self slide presentation: nil
	