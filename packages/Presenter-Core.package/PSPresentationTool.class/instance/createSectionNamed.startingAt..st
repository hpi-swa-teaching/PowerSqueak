sections
createSectionNamed: aString startingAt: aSlide

	self presentation addSectionNamed: aString firstSlide: aSlide.
	self updateSlideMiniatures
