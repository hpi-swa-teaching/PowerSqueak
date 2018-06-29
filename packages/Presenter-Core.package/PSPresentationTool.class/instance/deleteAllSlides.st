slide management
deleteAllSlides

	[self slideCount > self minimumSlideCount]
		whileTrue: [self deleteSlide].
	self deleteSlide