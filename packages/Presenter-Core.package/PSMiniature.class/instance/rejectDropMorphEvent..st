event-processing
rejectDropMorphEvent: anEvent

	self model deleteSlideAt: self slide slideNumber.
	self slide presentation: nil.
	self model: nil.
	anEvent hand world addMorph: self.
	self position: anEvent position