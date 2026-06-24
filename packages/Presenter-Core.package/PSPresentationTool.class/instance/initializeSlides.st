initialize-release
initializeSlides

	self
		presentation: PSPresentation newWithLayouts;
		miniatures: Dictionary new;
		currentSlideNumber: 1;
		commandHistory: PSCommandHistory new