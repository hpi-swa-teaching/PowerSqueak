slide management
selectSlide: aSlide

	self selectSlideNumber: (self slides indexOf: aSlide ifAbsent: [])
