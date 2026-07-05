section creation
createSectionNamed: aString startingAt: aSlide

	self presentation addSectionNamed: aString firstSlide: aSlide.
	self miniatureController updateSlideMiniatures